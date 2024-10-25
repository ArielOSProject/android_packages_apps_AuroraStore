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
# 4.6.2
LOCAL_SRC_FILES := AuroraStore.apk
LOCAL_SDK_VERSION := 30
include $(BUILD_PREBUILT)
