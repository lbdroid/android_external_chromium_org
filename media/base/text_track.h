// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef MEDIA_BASE_TEXT_TRACK_H_
#define MEDIA_BASE_TEXT_TRACK_H_

#include <string>

#include "base/callback.h"
#include "base/memory/scoped_ptr.h"
#include "base/time/time.h"

namespace media {

// Specifies the varieties of text tracks.
enum TextKind {
  kTextSubtitles,
  kTextCaptions,
  kTextDescriptions,
  kTextMetadata,
  kTextNone
};

class TextTrack {
 public:
  virtual ~TextTrack() {}
  virtual void addWebVTTCue(const base::TimeDelta& start,
                            const base::TimeDelta& end,
                            const std::string& id,
                            const std::string& content,
                            const std::string& settings) = 0;
};

typedef base::Callback<scoped_ptr<TextTrack>
    (TextKind kind,
     const std::string& label,
     const std::string& language)> AddTextTrackCB;

}  // namespace media

#endif  // MEDIA_BASE_TEXT_TRACK_H_
