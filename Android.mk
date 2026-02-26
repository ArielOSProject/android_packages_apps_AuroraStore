LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := AuroraStore
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_MODULE_CLASS := APPS
ifneq ($(call math_gt_or_eq, $(PLATFORM_SDK_VERSION), 31),)
LOCAL_OPTIONAL_USES_LIBRARIES := androidx.window.extensions androidx.window.sidecar
endif
# 4.6.4
LOCAL_SRC_FILES := AuroraStore.apk #4.8.1
# this is needed because of the No APK Signature Scheme v2 signature in package error for version 4.6.4
# which results in app not being installed.
# Apparently, AOSP strips down the apk and also strips down the Signature Scheme v2 while stripping it
# so we use this flag to maintain the scheme and allow the app to be properly installed.
LOCAL_REPLACE_PREBUILT_APK_INSTALLED := $(LOCAL_PATH)/$(LOCAL_MODULE).apk
include $(BUILD_PREBUILT)
