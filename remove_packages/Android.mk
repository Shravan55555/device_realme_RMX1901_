LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := RecorderPrebuilt Photos SoundAmplifierPrebuilt GoogleCamera AdaptiveVPNPrebuilt AmbientStreaming CalendarGooglePrebuilt CarrierLocation CarrierMetrics DevicePolicyPrebuilt DiagnosticsToolPrebuilt FilesPrebuilt ScribePrebuilt Showcase Tycho
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
