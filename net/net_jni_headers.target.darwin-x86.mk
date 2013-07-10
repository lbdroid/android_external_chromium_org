# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := net_net_jni_headers_gyp
LOCAL_MODULE_STEM := net_jni_headers
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TAGS := optional
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES :=


### Generated for rule "net_net_gyp_net_jni_headers_target_generate_jni_headers":
# "{'inputs': ['../base/android/jni_generator/jni_generator.py', '../android_webview/build/jarjar-rules.txt'], 'process_outputs_as_sources': '1', 'extension': 'java', 'outputs': ['$(gyp_shared_intermediate_dir)/net/jni/%(INPUT_ROOT)s_jni.h'], 'rule_name': 'generate_jni_headers', 'rule_sources': ['android/java/src/org/chromium/net/AndroidKeyStore.java', 'android/java/src/org/chromium/net/AndroidNetworkLibrary.java', 'android/java/src/org/chromium/net/GURLUtils.java', 'android/java/src/org/chromium/net/NetworkChangeNotifier.java', 'android/java/src/org/chromium/net/ProxyChangeListener.java'], 'action': ['../base/android/jni_generator/jni_generator.py', '--input_file', '$(RULE_SOURCES)', '--output_dir', '$(gyp_shared_intermediate_dir)/net/jni', '--optimize_generation', '0', '--jarjar', '../android_webview/build/jarjar-rules.txt'], 'message': 'Generating JNI bindings from $(RULE_SOURCES)'}":
$(gyp_shared_intermediate_dir)/net/jni/AndroidKeyStore_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/net/jni/AndroidKeyStore_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/net/jni/AndroidKeyStore_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/net/jni/AndroidKeyStore_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/net/jni/AndroidKeyStore_jni.h: $(LOCAL_PATH)/net/android/java/src/org/chromium/net/AndroidKeyStore.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/net/jni; cd $(gyp_local_path)/net; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/net/AndroidKeyStore.java --output_dir "$(gyp_shared_intermediate_dir)/net/jni" --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt

.PHONY: net_net_jni_headers_gyp_rule_trigger
net_net_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/net/jni/AndroidKeyStore_jni.h

$(gyp_shared_intermediate_dir)/net/jni/AndroidNetworkLibrary_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/net/jni/AndroidNetworkLibrary_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/net/jni/AndroidNetworkLibrary_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/net/jni/AndroidNetworkLibrary_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/net/jni/AndroidNetworkLibrary_jni.h: $(LOCAL_PATH)/net/android/java/src/org/chromium/net/AndroidNetworkLibrary.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/net/jni; cd $(gyp_local_path)/net; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/net/AndroidNetworkLibrary.java --output_dir "$(gyp_shared_intermediate_dir)/net/jni" --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt

.PHONY: net_net_jni_headers_gyp_rule_trigger
net_net_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/net/jni/AndroidNetworkLibrary_jni.h

$(gyp_shared_intermediate_dir)/net/jni/GURLUtils_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/net/jni/GURLUtils_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/net/jni/GURLUtils_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/net/jni/GURLUtils_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/net/jni/GURLUtils_jni.h: $(LOCAL_PATH)/net/android/java/src/org/chromium/net/GURLUtils.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/net/jni; cd $(gyp_local_path)/net; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/net/GURLUtils.java --output_dir "$(gyp_shared_intermediate_dir)/net/jni" --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt

.PHONY: net_net_jni_headers_gyp_rule_trigger
net_net_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/net/jni/GURLUtils_jni.h

$(gyp_shared_intermediate_dir)/net/jni/NetworkChangeNotifier_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/net/jni/NetworkChangeNotifier_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/net/jni/NetworkChangeNotifier_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/net/jni/NetworkChangeNotifier_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/net/jni/NetworkChangeNotifier_jni.h: $(LOCAL_PATH)/net/android/java/src/org/chromium/net/NetworkChangeNotifier.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/net/jni; cd $(gyp_local_path)/net; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/net/NetworkChangeNotifier.java --output_dir "$(gyp_shared_intermediate_dir)/net/jni" --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt

.PHONY: net_net_jni_headers_gyp_rule_trigger
net_net_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/net/jni/NetworkChangeNotifier_jni.h

$(gyp_shared_intermediate_dir)/net/jni/ProxyChangeListener_jni.h: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/net/jni/ProxyChangeListener_jni.h: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/net/jni/ProxyChangeListener_jni.h: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/net/jni/ProxyChangeListener_jni.h: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/net/jni/ProxyChangeListener_jni.h: $(LOCAL_PATH)/net/android/java/src/org/chromium/net/ProxyChangeListener.java $(LOCAL_PATH)/base/android/jni_generator/jni_generator.py $(LOCAL_PATH)/android_webview/build/jarjar-rules.txt $(GYP_TARGET_DEPENDENCIES)
	mkdir -p $(gyp_shared_intermediate_dir)/net/jni; cd $(gyp_local_path)/net; ../base/android/jni_generator/jni_generator.py --input_file android/java/src/org/chromium/net/ProxyChangeListener.java --output_dir "$(gyp_shared_intermediate_dir)/net/jni" --optimize_generation 0 --jarjar ../android_webview/build/jarjar-rules.txt

.PHONY: net_net_jni_headers_gyp_rule_trigger
net_net_jni_headers_gyp_rule_trigger: $(gyp_shared_intermediate_dir)/net/jni/ProxyChangeListener_jni.h

### Finished generating for all rules

GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/net/jni/AndroidKeyStore_jni.h \
	$(gyp_shared_intermediate_dir)/net/jni/AndroidNetworkLibrary_jni.h \
	$(gyp_shared_intermediate_dir)/net/jni/GURLUtils_jni.h \
	$(gyp_shared_intermediate_dir)/net/jni/NetworkChangeNotifier_jni.h \
	$(gyp_shared_intermediate_dir)/net/jni/ProxyChangeListener_jni.h

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_GENERATED_SOURCES := \
	$(gyp_shared_intermediate_dir)/net/jni/AndroidKeyStore_jni.h \
	$(gyp_shared_intermediate_dir)/net/jni/AndroidNetworkLibrary_jni.h \
	$(gyp_shared_intermediate_dir)/net/jni/GURLUtils_jni.h \
	$(gyp_shared_intermediate_dir)/net/jni/NetworkChangeNotifier_jni.h \
	$(gyp_shared_intermediate_dir)/net/jni/ProxyChangeListener_jni.h \
	net_net_jni_headers_gyp_rule_trigger

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES :=


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-m32 \
	-mmmx \
	-march=pentium4 \
	-msse2 \
	-mfpmath=sse \
	-fuse-ld=gold \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-fno-stack-protector \
	-Os \
	-g \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections

MY_DEFS_Debug := \
	'-DANGLE_DX11' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DUSE_LINUX_BREAKPAD' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_GPU=1' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DENABLE_LANGUAGE_DETECTION=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Debug := \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Debug := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-error=c++0x-compat \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


# Flags passed to both C and C++ files.
MY_CFLAGS_Release := \
	--param=ssp-buffer-size=4 \
	-Werror \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-m32 \
	-mmmx \
	-march=pentium4 \
	-msse2 \
	-mfpmath=sse \
	-fuse-ld=gold \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-fno-stack-protector \
	-Os \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer \
	-fno-unwind-tables \
	-fno-asynchronous-unwind-tables

MY_DEFS_Release := \
	'-DANGLE_DX11' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DUSE_LINUX_BREAKPAD' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_GPU=1' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DENABLE_LANGUAGE_DETECTION=1' \
	'-D__STDC_CONSTANT_MACROS' \
	'-D__STDC_FORMAT_MACROS' \
	'-DANDROID' \
	'-D__GNU_SOURCE=1' \
	'-DUSE_STLPORT=1' \
	'-D_STLP_USE_PTR_SPECIALIZATIONS=1' \
	'-DCHROME_BUILD_ID=""' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0' \
	'-D_FORTIFY_SOURCE=2'


# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES_Release := \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Release := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-error=c++0x-compat \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


LOCAL_CFLAGS := $(MY_CFLAGS_$(GYP_CONFIGURATION)) $(MY_DEFS_$(GYP_CONFIGURATION))
LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES_$(GYP_CONFIGURATION))
LOCAL_CPPFLAGS := $(LOCAL_CPPFLAGS_$(GYP_CONFIGURATION))
### Rules for final target.
# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: net_net_jni_headers_gyp

# Alias gyp target name.
.PHONY: net_jni_headers
net_jni_headers: net_net_jni_headers_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@
