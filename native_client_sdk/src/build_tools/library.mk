# Copyright (c) 2013 The Chromium Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.
[[target = targets[0] ]]
[[flags = ' '.join(target.get('CCFLAGS', []))]]
[[flags += ' '.join(target.get('CXXFLAGS', []))]]

# GNU Makefile based on shared rules provided by the Native Client SDK.
# See README.Makefiles for more details.

VALID_TOOLCHAINS := {{' '.join(tools)}}
NACL_SDK_ROOT ?= $(abspath $(CURDIR)/../..)
[[if 'INCLUDES' in target:]]
EXTRA_INC_PATHS={{' '.join(target['INCLUDES'])}}
[[]]

include $(NACL_SDK_ROOT)/tools/common.mk

TARGET = {{target['NAME']}}
CFLAGS = {{flags}}
SOURCES = \
[[for source in sorted(target['SOURCES']):]]
  {{source}} \
[[]]

all: install

# Build rules generated by macros from common.mk:
#
$(foreach src,$(SOURCES),$(eval $(call COMPILE_RULE,$(src),$(CFLAGS))))
$(eval $(call LIB_RULE,$(TARGET),$(SOURCES)))

[[if target['TYPE'] != 'static-lib':]]
ifeq ($(TOOLCHAIN),glibc)
$(eval $(call SO_RULE,$(TARGET),$(SOURCES)))
endif
[[]]
