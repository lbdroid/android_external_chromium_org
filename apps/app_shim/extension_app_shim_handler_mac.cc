// Copyright 2013 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "apps/app_shim/extension_app_shim_handler_mac.h"

#include "apps/app_lifetime_monitor_factory.h"
#include "apps/app_shim/app_shim_messages.h"
#include "apps/shell_window.h"
#include "base/files/file_path.h"
#include "base/logging.h"
#include "chrome/browser/browser_process.h"
#include "chrome/browser/extensions/extension_host.h"
#include "chrome/browser/extensions/extension_service.h"
#include "chrome/browser/extensions/extension_system.h"
#include "chrome/browser/extensions/shell_window_registry.h"
#include "chrome/browser/lifetime/application_lifetime.h"
#include "chrome/browser/profiles/profile.h"
#include "chrome/browser/profiles/profile_manager.h"
#include "chrome/browser/ui/extensions/application_launch.h"
#include "chrome/browser/ui/extensions/native_app_window.h"
#include "chrome/browser/ui/web_applications/web_app_ui.h"
#include "chrome/browser/web_applications/web_app_mac.h"
#include "chrome/common/chrome_notification_types.h"
#include "content/public/browser/notification_details.h"
#include "content/public/browser/notification_service.h"
#include "content/public/browser/notification_source.h"
#include "ui/base/cocoa/focus_window_set.h"

namespace apps {

typedef extensions::ShellWindowRegistry::ShellWindowList ShellWindowList;

bool ExtensionAppShimHandler::Delegate::ProfileExistsForPath(
    const base::FilePath& path) {
  ProfileManager* profile_manager = g_browser_process->profile_manager();
  // Check for the profile name in the profile info cache to ensure that we
  // never access any directory that isn't a known profile.
  base::FilePath full_path = profile_manager->user_data_dir().Append(path);
  ProfileInfoCache& cache = profile_manager->GetProfileInfoCache();
  return cache.GetIndexOfProfileWithPath(full_path) != std::string::npos;
}

Profile* ExtensionAppShimHandler::Delegate::ProfileForPath(
    const base::FilePath& path) {
  ProfileManager* profile_manager = g_browser_process->profile_manager();
  base::FilePath full_path = profile_manager->user_data_dir().Append(path);
  return profile_manager->GetProfile(full_path);
}

ShellWindowList ExtensionAppShimHandler::Delegate::GetWindows(
    Profile* profile,
    const std::string& extension_id) {
  return extensions::ShellWindowRegistry::Get(profile)->
      GetShellWindowsForApp(extension_id);
}

const extensions::Extension*
ExtensionAppShimHandler::Delegate::GetAppExtension(
    Profile* profile,
    const std::string& extension_id) {
  ExtensionService* extension_service =
      extensions::ExtensionSystem::Get(profile)->extension_service();
  DCHECK(extension_service);
  const extensions::Extension* extension =
      extension_service->GetExtensionById(extension_id, false);
  return extension && extension->is_platform_app() ? extension : NULL;
}

void ExtensionAppShimHandler::Delegate::LaunchApp(
    Profile* profile,
    const extensions::Extension* extension) {
  chrome::OpenApplication(
      chrome::AppLaunchParams(profile, extension, NEW_FOREGROUND_TAB));
}

void ExtensionAppShimHandler::Delegate::LaunchShim(
    Profile* profile,
    const extensions::Extension* extension) {
  web_app::MaybeLaunchShortcut(
      web_app::ShortcutInfoForExtensionAndProfile(extension, profile));
}

void ExtensionAppShimHandler::Delegate::MaybeTerminate() {
  bool shell_windows_left =
      extensions::ShellWindowRegistry::IsShellWindowRegisteredInAnyProfile(0);
  if (!shell_windows_left)
    chrome::AttemptExit();
}

ExtensionAppShimHandler::ExtensionAppShimHandler()
    : delegate_(new Delegate),
      browser_opened_ever_(false) {
  // This is instantiated in BrowserProcessImpl::PreMainMessageLoopRun with
  // AppShimHostManager. Since PROFILE_CREATED is not fired until
  // ProfileManager::GetLastUsedProfile/GetLastOpenedProfiles, this should catch
  // notifications for all profiles.
  registrar_.Add(this, chrome::NOTIFICATION_PROFILE_CREATED,
                 content::NotificationService::AllBrowserContextsAndSources());
  registrar_.Add(this, chrome::NOTIFICATION_PROFILE_DESTROYED,
                 content::NotificationService::AllBrowserContextsAndSources());
  registrar_.Add(this, chrome::NOTIFICATION_EXTENSION_UNINSTALLED,
                 content::NotificationService::AllBrowserContextsAndSources());
  registrar_.Add(this, chrome::NOTIFICATION_BROWSER_OPENED,
                 content::NotificationService::AllBrowserContextsAndSources());
}

ExtensionAppShimHandler::~ExtensionAppShimHandler() {}

bool ExtensionAppShimHandler::OnShimLaunch(Host* host,
                                           AppShimLaunchType launch_type) {
  const base::FilePath& profile_path = host->GetProfilePath();
  DCHECK(!profile_path.empty());

  if (!delegate_->ProfileExistsForPath(profile_path)) {
    // User may have deleted the profile this shim was originally created for.
    // TODO(jackhou): Add some UI for this case and remove the LOG.
    LOG(ERROR) << "Requested directory is not a known profile '"
               << profile_path.value() << "'.";
    return false;
  }

  Profile* profile = delegate_->ProfileForPath(profile_path);

  const std::string& app_id = host->GetAppId();
  if (!extensions::Extension::IdIsValid(app_id)) {
    LOG(ERROR) << "Bad app ID from app shim launch message.";
    return false;
  }

  // TODO(jackhou): Add some UI for this case and remove the LOG.
  const extensions::Extension* extension =
      delegate_->GetAppExtension(profile, app_id);
  if (!extension) {
    LOG(ERROR) << "Attempted to launch nonexistent app with id '"
               << app_id << "'.";
    return false;
  }

  // If the shim was launched in response to a window appearing, but the window
  // is closed by the time the shim process launched, return false to close the
  // shim.
  if (launch_type == APP_SHIM_LAUNCH_REGISTER_ONLY &&
      delegate_->GetWindows(profile, app_id).empty()) {
    return false;
  }

  // TODO(jeremya): Handle the case that launching the app fails. Probably we
  // need to watch for 'app successfully launched' or at least 'background page
  // exists/was created' and time out with failure if we don't see that sign of
  // life within a certain window.
  if (launch_type == APP_SHIM_LAUNCH_NORMAL)
    delegate_->LaunchApp(profile, extension);

  // The first host to claim this (profile, app_id) becomes the main host.
  // For any others, focus or relaunch the app and return false.
  if (!hosts_.insert(make_pair(make_pair(profile, app_id), host)).second) {
    OnShimFocus(host,
                launch_type == APP_SHIM_LAUNCH_NORMAL ?
                    APP_SHIM_FOCUS_REOPEN : APP_SHIM_FOCUS_NORMAL);
    return false;
  }

  return true;
}

void ExtensionAppShimHandler::OnShimClose(Host* host) {
  DCHECK(delegate_->ProfileExistsForPath(host->GetProfilePath()));
  Profile* profile = delegate_->ProfileForPath(host->GetProfilePath());

  HostMap::iterator it = hosts_.find(make_pair(profile, host->GetAppId()));
  // Any hosts other than the main host will still call OnShimClose, so ignore
  // them.
  if (it != hosts_.end() && it->second == host)
    hosts_.erase(it);
}

void ExtensionAppShimHandler::OnShimFocus(Host* host,
                                          AppShimFocusType focus_type) {
  DCHECK(delegate_->ProfileExistsForPath(host->GetProfilePath()));
  Profile* profile = delegate_->ProfileForPath(host->GetProfilePath());

  const ShellWindowList windows =
      delegate_->GetWindows(profile, host->GetAppId());
  std::set<gfx::NativeWindow> native_windows;
  for (ShellWindowList::const_iterator it = windows.begin();
       it != windows.end(); ++it) {
    native_windows.insert((*it)->GetNativeWindow());
  }
  if (!native_windows.empty()) {
    ui::FocusWindowSet(native_windows);
    return;
  }

  if (focus_type == APP_SHIM_FOCUS_REOPEN) {
    const extensions::Extension* extension =
        delegate_->GetAppExtension(profile, host->GetAppId());
    if (extension) {
      delegate_->LaunchApp(profile, extension);
    } else {
      // Extensions may have been uninstalled or disabled since the shim
      // started.
      host->OnAppClosed();
    }
  }
}

void ExtensionAppShimHandler::OnShimSetHidden(Host* host, bool hidden) {
  DCHECK(delegate_->ProfileExistsForPath(host->GetProfilePath()));
  Profile* profile = delegate_->ProfileForPath(host->GetProfilePath());

  const ShellWindowList windows =
      delegate_->GetWindows(profile, host->GetAppId());
  for (ShellWindowList::const_reverse_iterator it = windows.rbegin();
       it != windows.rend(); ++it) {
    if (hidden)
      (*it)->GetBaseWindow()->Hide();
    else
      (*it)->GetBaseWindow()->ShowInactive();
  }
}

void ExtensionAppShimHandler::OnShimQuit(Host* host) {
  DCHECK(delegate_->ProfileExistsForPath(host->GetProfilePath()));
  Profile* profile = delegate_->ProfileForPath(host->GetProfilePath());

  const ShellWindowList windows =
      delegate_->GetWindows(profile, host->GetAppId());
  for (extensions::ShellWindowRegistry::const_iterator it = windows.begin();
       it != windows.end(); ++it) {
    (*it)->GetBaseWindow()->Close();
  }

  DCHECK_NE(0u, hosts_.count(make_pair(profile, host->GetAppId())));
  hosts_.find(make_pair(profile, host->GetAppId()))->second->OnAppClosed();

  if (!browser_opened_ever_ && hosts_.empty())
    delegate_->MaybeTerminate();
}

void ExtensionAppShimHandler::set_delegate(Delegate* delegate) {
  delegate_.reset(delegate);
}

void ExtensionAppShimHandler::Observe(
    int type,
    const content::NotificationSource& source,
    const content::NotificationDetails& details) {
  if (type == chrome::NOTIFICATION_BROWSER_OPENED) {
    registrar_.Remove(
        this, chrome::NOTIFICATION_BROWSER_OPENED,
        content::NotificationService::AllBrowserContextsAndSources());
    browser_opened_ever_ = true;
    return;
  }

  Profile* profile = content::Source<Profile>(source).ptr();
  if (profile->IsOffTheRecord())
    return;

  switch (type) {
    case chrome::NOTIFICATION_PROFILE_CREATED: {
      AppLifetimeMonitorFactory::GetForProfile(profile)->AddObserver(this);
      break;
    }
    case chrome::NOTIFICATION_PROFILE_DESTROYED: {
      AppLifetimeMonitorFactory::GetForProfile(profile)->RemoveObserver(this);
      // Shut down every shim associated with this profile.
      for (HostMap::iterator it = hosts_.begin(); it != hosts_.end(); ) {
        // Increment the iterator first as OnAppClosed may call back to
        // OnShimClose and invalidate the iterator.
        HostMap::iterator current = it++;
        if (profile->IsSameProfile(current->first.first))
          current->second->OnAppClosed();
      }
      break;
    }
    case chrome::NOTIFICATION_EXTENSION_UNINSTALLED: {
      const std::string& app_id =
          content::Details<extensions::Extension>(details).ptr()->id();
      HostMap::const_iterator it = hosts_.find(make_pair(profile, app_id));
      if (it != hosts_.end())
        it->second->OnAppClosed();
      break;
    }
    default: {
      NOTREACHED();  // Unexpected notification.
      break;
    }
  }
}

void ExtensionAppShimHandler::OnAppStart(Profile* profile,
                                         const std::string& app_id) {}

void ExtensionAppShimHandler::OnAppActivated(Profile* profile,
                                             const std::string& app_id) {
  const extensions::Extension* extension =
      delegate_->GetAppExtension(profile, app_id);
  if (!extension)
    return;

  if (hosts_.count(make_pair(profile, app_id)))
    return;

  delegate_->LaunchShim(profile, extension);
}

void ExtensionAppShimHandler::OnAppDeactivated(Profile* profile,
                                               const std::string& app_id) {}

void ExtensionAppShimHandler::OnAppStop(Profile* profile,
                                        const std::string& app_id) {}

void ExtensionAppShimHandler::OnChromeTerminating() {}

}  // namespace apps
