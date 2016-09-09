LOCAL_PATH:= $(call my-dir)

############################
# Adding the Robolectric .JAR prebuilts from this directory into a single target.
include $(CLEAR_VARS)

LOCAL_STATIC_JAVA_LIBRARIES := \
    platform-robolectric-annotations \
    platform-robolectric-multidex \
    platform-robolectric-resources \
    platform-robolectric-shadows-core \
    platform-robolectric-shadows-core-v16 \
    platform-robolectric-shadows-core-v17 \
    platform-robolectric-shadows-core-v18 \
    platform-robolectric-shadows-core-v19 \
    platform-robolectric-shadows-core-v21 \
    platform-robolectric-shadows-core-v22 \
    platform-robolectric-shadows-core-v23 \
    platform-robolectric-shadows-httpclient \
    platform-robolectric-snapshot \
    platform-robolectric-utils

LOCAL_MODULE := platform-robolectric-prebuilt

LOCAL_SDK_VERSION := current

include $(BUILD_STATIC_JAVA_LIBRARY)

############################
# Defining the target names for the static prebuilt .JARs.
include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
    platform-mockito-prebuilt:lib/mockito-core-1.10.19.jar \
    platform-robolectric-annotations:lib/robolectric-annotations-3.1.1.jar \
    platform-robolectric-multidex:lib/shadows-multidex-3.1.1.jar \
    platform-robolectric-resources:lib/robolectric-resources-3.1.1.jar \
    platform-robolectric-shadows-core:lib/shadows-core-3.1.1.jar \
    platform-robolectric-shadows-core-v16:lib/shadows-core-v16-3.1.1.jar \
    platform-robolectric-shadows-core-v17:lib/shadows-core-v17-3.1.1.jar \
    platform-robolectric-shadows-core-v18:lib/shadows-core-v18-3.1.1.jar \
    platform-robolectric-shadows-core-v19:lib/shadows-core-v19-3.1.1.jar \
    platform-robolectric-shadows-core-v21:lib/shadows-core-v21-3.1.1.jar \
    platform-robolectric-shadows-core-v22:lib/shadows-core-v22-3.1.1.jar \
    platform-robolectric-shadows-core-v23:lib/shadows-core-v23-3.1.1.jar \
    platform-robolectric-shadows-httpclient:lib/shadows-httpclient-3.1.1.jar\
    platform-robolectric-snapshot:lib/robolectric-3.1.1.jar \
    platform-robolectric-utils:lib/robolectric-utils-3.1.1.jar

include $(BUILD_MULTI_PREBUILT)

############################
# Target for a runnable Robolectric bundled with JUnit. This is the one you probably want.
include $(CLEAR_VARS)

LOCAL_MODULE := platform-system-robolectric

LOCAL_STATIC_JAVA_LIBRARIES := \
    platform-mockito-prebuilt \
    guava \

LOCAL_JAVA_LIBRARIES += \
    junit4-target \
    platform-robolectric-prebuilt \

LOCAL_SDK_VERSION := current

include $(BUILD_STATIC_JAVA_LIBRARY)
