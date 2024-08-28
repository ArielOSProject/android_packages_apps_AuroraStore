LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := AuroraStore
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_MODULE_CLASS := APPS
LOCAL_OPTIONAL_USES_LIBRARIES := androidx.window.extensions androidx.window.sidecar
# 4.3.1
LOCAL_SRC_FILES := AuroraStore.apk
include $(BUILD_PREBUILT)
