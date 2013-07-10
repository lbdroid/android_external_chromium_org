// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "chrome/browser/chrome_to_mobile_service_factory.h"

#include "chrome/browser/chrome_to_mobile_service.h"
#include "chrome/browser/invalidation/invalidation_service_factory.h"
#include "chrome/browser/profiles/profile.h"
#include "chrome/browser/signin/token_service_factory.h"
#include "components/browser_context_keyed_service/browser_context_dependency_manager.h"

// static
ChromeToMobileServiceFactory* ChromeToMobileServiceFactory::GetInstance() {
  return Singleton<ChromeToMobileServiceFactory>::get();
}

// static
ChromeToMobileService* ChromeToMobileServiceFactory::GetForProfile(
    Profile* profile) {
  return static_cast<ChromeToMobileService*>(
    GetInstance()->GetServiceForBrowserContext(profile, true));
}

BrowserContextKeyedService*
ChromeToMobileServiceFactory::BuildServiceInstanceFor(
    content::BrowserContext* profile) const {
  // Ensure that the service is not instantiated or used if it is disabled.
  if (!ChromeToMobileService::IsChromeToMobileEnabled())
    return NULL;

  return new ChromeToMobileService(static_cast<Profile*>(profile));
}

ChromeToMobileServiceFactory::ChromeToMobileServiceFactory()
    : BrowserContextKeyedServiceFactory(
        "ChromeToMobileService",
        BrowserContextDependencyManager::GetInstance()) {
  DependsOn(invalidation::InvalidationServiceFactory::GetInstance());
  DependsOn(TokenServiceFactory::GetInstance());
  // TODO(msw): Uncomment this once it exists.
  // DependsOn(PrefServiceFactory::GetInstance());
}

ChromeToMobileServiceFactory::~ChromeToMobileServiceFactory() {}
