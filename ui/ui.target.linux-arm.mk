# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := ui_ui_gyp
LOCAL_MODULE_SUFFIX := .a
LOCAL_MODULE_TAGS := optional
gyp_intermediate_dir := $(call local-intermediates-dir)
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared)

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,STATIC_LIBRARIES,skia_skia_gyp)/skia_skia_gyp.a \
	$(call intermediates-dir-for,GYP,third_party_icu_icui18n_gyp)/icui18n.stamp \
	$(call intermediates-dir-for,GYP,third_party_icu_icuuc_gyp)/icuuc.stamp \
	$(call intermediates-dir-for,GYP,ui_base_strings_ui_strings_gyp)/ui_strings.stamp \
	$(call intermediates-dir-for,GYP,ui_ui_resources_gyp)/ui_resources.stamp \
	$(call intermediates-dir-for,GYP,third_party_libjpeg_libjpeg_gyp)/libjpeg.stamp \
	$(call intermediates-dir-for,GYP,ui_ui_jni_headers_gyp)/ui_jni_headers.stamp

GYP_GENERATED_OUTPUTS :=

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

LOCAL_CPP_EXTENSION := .cc
LOCAL_GENERATED_SOURCES :=

GYP_COPIED_SOURCE_ORIGIN_DIRS :=

LOCAL_SRC_FILES := \
	ui/android/ui_jni_registrar.cc \
	ui/android/view_android.cc \
	ui/android/window_android.cc \
	ui/base/accelerators/accelerator.cc \
	ui/base/accelerators/accelerator_manager.cc \
	ui/base/accessibility/accessible_text_utils.cc \
	ui/base/accessibility/accessible_view_state.cc \
	ui/base/animation/animation.cc \
	ui/base/animation/animation_container.cc \
	ui/base/animation/linear_animation.cc \
	ui/base/animation/multi_animation.cc \
	ui/base/animation/slide_animation.cc \
	ui/base/animation/throb_animation.cc \
	ui/base/animation/tween.cc \
	ui/base/clipboard/clipboard.cc \
	ui/base/clipboard/clipboard_android.cc \
	ui/base/clipboard/clipboard_constants.cc \
	ui/base/clipboard/custom_data_helper.cc \
	ui/base/clipboard/scoped_clipboard_writer.cc \
	ui/base/default_theme_provider.cc \
	ui/base/events/event_utils.cc \
	ui/base/keycodes/keyboard_code_conversion.cc \
	ui/base/latency_info.cc \
	ui/base/l10n/l10n_font_util.cc \
	ui/base/l10n/l10n_util.cc \
	ui/base/l10n/l10n_util_android.cc \
	ui/base/l10n/l10n_util_posix.cc \
	ui/base/layout.cc \
	ui/base/models/button_menu_item_model.cc \
	ui/base/models/combobox_model.cc \
	ui/base/models/dialog_model.cc \
	ui/base/models/list_selection_model.cc \
	ui/base/models/menu_model.cc \
	ui/base/models/simple_menu_model.cc \
	ui/base/models/table_model.cc \
	ui/base/models/tree_model.cc \
	ui/base/range/range.cc \
	ui/base/resource/data_pack.cc \
	ui/base/resource/resource_bundle.cc \
	ui/base/resource/resource_bundle_android.cc \
	ui/base/text/bytes_formatting.cc \
	ui/base/text/text_elider.cc \
	ui/base/text/utf16_indexing.cc \
	ui/base/theme_provider.cc \
	ui/base/touch/touch_device_android.cc \
	ui/base/touch/touch_editing_controller.cc \
	ui/base/ui_base_exports.cc \
	ui/base/ui_base_paths.cc \
	ui/base/ui_base_switches.cc \
	ui/base/ui_base_switches_util.cc \
	ui/base/ui_base_types.cc \
	ui/base/window_open_disposition.cc \
	ui/gfx/android/device_display_info.cc \
	ui/gfx/android/java_bitmap.cc \
	ui/gfx/blit.cc \
	ui/gfx/canvas.cc \
	ui/gfx/canvas_android.cc \
	ui/gfx/codec/jpeg_codec.cc \
	ui/gfx/codec/png_codec.cc \
	ui/gfx/color_analysis.cc \
	ui/gfx/color_profile.cc \
	ui/gfx/color_utils.cc \
	ui/gfx/display.cc \
	ui/gfx/display_observer.cc \
	ui/gfx/favicon_size.cc \
	ui/gfx/font.cc \
	ui/gfx/font_list.cc \
	ui/gfx/font_render_params_android.cc \
	ui/gfx/gfx_paths.cc \
	ui/gfx/image/canvas_image_source.cc \
	ui/gfx/image/image.cc \
	ui/gfx/image/image_family.cc \
	ui/gfx/image/image_png_rep.cc \
	ui/gfx/image/image_skia.cc \
	ui/gfx/image/image_skia_operations.cc \
	ui/gfx/image/image_skia_rep.cc \
	ui/gfx/image/image_util.cc \
	ui/gfx/insets.cc \
	ui/gfx/insets_f.cc \
	ui/gfx/interpolated_transform.cc \
	ui/gfx/matrix3_f.cc \
	ui/gfx/path.cc \
	ui/gfx/platform_font_android.cc \
	ui/gfx/point.cc \
	ui/gfx/point3_f.cc \
	ui/gfx/point_conversions.cc \
	ui/gfx/point_f.cc \
	ui/gfx/quad_f.cc \
	ui/gfx/rect.cc \
	ui/gfx/rect_conversions.cc \
	ui/gfx/rect_f.cc \
	ui/gfx/screen.cc \
	ui/gfx/screen_android.cc \
	ui/gfx/scrollbar_size.cc \
	ui/gfx/selection_model.cc \
	ui/gfx/shadow_value.cc \
	ui/gfx/size.cc \
	ui/gfx/size_conversions.cc \
	ui/gfx/size_f.cc \
	ui/gfx/skbitmap_operations.cc \
	ui/gfx/skia_util.cc \
	ui/gfx/switches.cc \
	ui/gfx/sys_color_change_listener.cc \
	ui/gfx/text_utils.cc \
	ui/gfx/transform.cc \
	ui/gfx/transform_util.cc \
	ui/gfx/vector2d.cc \
	ui/gfx/vector2d_conversions.cc \
	ui/gfx/vector2d_f.cc \
	ui/gfx/vector3d_f.cc \
	ui/webui/jstemplate_builder.cc \
	ui/webui/web_ui_util.cc \
	ui/base/ime/composition_text.cc \
	ui/base/ime/input_method_initializer.cc \
	ui/base/ime/text_input_client.cc


# Flags passed to both C and C++ files.
MY_CFLAGS_Debug := \
	-fstack-protector \
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
	-fno-tree-sra \
	-fuse-ld=gold \
	-Wno-psabi \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
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
	'-DUI_IMPLEMENTATION' \
	'-DPOSIX_AVOID_MMAP' \
	'-DSK_BUILD_NO_IMAGE_ENCODE' \
	'-DSK_DEFERRED_CANVAS_USES_GPIPE=1' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DGR_AGGRESSIVE_SHADER_OPTS=1' \
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_USE_POSIX_THREADS' \
	'-DSK_BUILD_FOR_ANDROID' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DCHROME_PNG_WRITE_SUPPORT' \
	'-DPNG_USER_CONFIG' \
	'-DUSE_SYSTEM_LIBJPEG' \
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
	$(gyp_shared_intermediate_dir)/ui \
	$(gyp_shared_intermediate_dir)/shim_headers/ashmem/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icui18n/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icuuc/target \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/config \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/gpu/gl \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/skia/ext \
	$(PWD)/external/icu4c/common \
	$(PWD)/external/icu4c/i18n \
	$(LOCAL_PATH)/third_party/libpng \
	$(LOCAL_PATH)/third_party/zlib \
	$(gyp_shared_intermediate_dir)/ui/app_locale_settings \
	$(gyp_shared_intermediate_dir)/ui/ui_strings \
	$(gyp_shared_intermediate_dir)/ui/ui_resources \
	$(PWD)/external/jpeg \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Debug := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-abi \
	-Wno-error=c++0x-compat \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


# Flags passed to both C and C++ files.
MY_CFLAGS_Release := \
	-fstack-protector \
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
	-fno-tree-sra \
	-fuse-ld=gold \
	-Wno-psabi \
	-ffunction-sections \
	-funwind-tables \
	-g \
	-fstack-protector \
	-fno-short-enums \
	-finline-limit=64 \
	-Wa,--noexecstack \
	-U_FORTIFY_SOURCE \
	-Wno-extra \
	-Wno-ignored-qualifiers \
	-Wno-type-limits \
	-Os \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer

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
	'-DUI_IMPLEMENTATION' \
	'-DPOSIX_AVOID_MMAP' \
	'-DSK_BUILD_NO_IMAGE_ENCODE' \
	'-DSK_DEFERRED_CANVAS_USES_GPIPE=1' \
	'-DGR_GL_CUSTOM_SETUP_HEADER="GrGLConfig_chrome.h"' \
	'-DGR_AGGRESSIVE_SHADER_OPTS=1' \
	'-DSK_ENABLE_INST_COUNT=0' \
	'-DSK_USE_POSIX_THREADS' \
	'-DSK_BUILD_FOR_ANDROID' \
	'-DU_USING_ICU_NAMESPACE=0' \
	'-DCHROME_PNG_WRITE_SUPPORT' \
	'-DPNG_USER_CONFIG' \
	'-DUSE_SYSTEM_LIBJPEG' \
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
	$(gyp_shared_intermediate_dir)/ui \
	$(gyp_shared_intermediate_dir)/shim_headers/ashmem/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icui18n/target \
	$(gyp_shared_intermediate_dir)/shim_headers/icuuc/target \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/skia/config \
	$(LOCAL_PATH)/third_party/skia/src/core \
	$(LOCAL_PATH)/third_party/skia/include/config \
	$(LOCAL_PATH)/third_party/skia/include/core \
	$(LOCAL_PATH)/third_party/skia/include/effects \
	$(LOCAL_PATH)/third_party/skia/include/pdf \
	$(LOCAL_PATH)/third_party/skia/include/gpu \
	$(LOCAL_PATH)/third_party/skia/include/gpu/gl \
	$(LOCAL_PATH)/third_party/skia/include/lazy \
	$(LOCAL_PATH)/third_party/skia/include/pathops \
	$(LOCAL_PATH)/third_party/skia/include/pipe \
	$(LOCAL_PATH)/third_party/skia/include/ports \
	$(LOCAL_PATH)/third_party/skia/include/utils \
	$(LOCAL_PATH)/skia/ext \
	$(PWD)/external/icu4c/common \
	$(PWD)/external/icu4c/i18n \
	$(LOCAL_PATH)/third_party/libpng \
	$(LOCAL_PATH)/third_party/zlib \
	$(gyp_shared_intermediate_dir)/ui/app_locale_settings \
	$(gyp_shared_intermediate_dir)/ui/ui_strings \
	$(gyp_shared_intermediate_dir)/ui/ui_resources \
	$(PWD)/external/jpeg \
	$(PWD)/frameworks/wilhelm/include \
	$(PWD)/bionic \
	$(PWD)/external/stlport/stlport


# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS_Release := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wsign-compare \
	-Wno-abi \
	-Wno-error=c++0x-compat \
	-Wno-non-virtual-dtor \
	-Wno-sign-promo


LOCAL_CFLAGS := $(MY_CFLAGS_$(GYP_CONFIGURATION)) $(MY_DEFS_$(GYP_CONFIGURATION))
LOCAL_C_INCLUDES := $(GYP_COPIED_SOURCE_ORIGIN_DIRS) $(LOCAL_C_INCLUDES_$(GYP_CONFIGURATION))
LOCAL_CPPFLAGS := $(LOCAL_CPPFLAGS_$(GYP_CONFIGURATION))
### Rules for final target.

LOCAL_LDFLAGS_Debug := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,-z,noexecstack \
	-fPIC \
	-Wl,-z,relro \
	-Wl,-z,now \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	-Wl,--icf=safe \
	-Wl,--gc-sections \
	-Wl,-O1 \
	-Wl,--as-needed


LOCAL_LDFLAGS_Release := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-Wl,-z,noexecstack \
	-fPIC \
	-Wl,-z,relro \
	-Wl,-z,now \
	-fuse-ld=gold \
	-nostdlib \
	-Wl,--no-undefined \
	-Wl,--exclude-libs=ALL \
	-Wl,--icf=safe \
	-Wl,-O1 \
	-Wl,--as-needed \
	-Wl,--gc-sections


LOCAL_LDFLAGS := $(LOCAL_LDFLAGS_$(GYP_CONFIGURATION))

LOCAL_STATIC_LIBRARIES := \
	skia_skia_gyp

# Enable grouping to fix circular references
LOCAL_GROUP_STATIC_LIBRARIES := true

LOCAL_SHARED_LIBRARIES := \
	libstlport \
	libdl

# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: ui_ui_gyp

# Alias gyp target name.
.PHONY: ui
ui: ui_ui_gyp

include $(BUILD_STATIC_LIBRARY)
