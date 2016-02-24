LOCAL_PATH := $(call my-dir)

# FFmpeg library
include $(CLEAR_VARS)
LOCAL_MODULE := libijkffmpeg
LOCAL_SRC_FILES := $(LOCAL_PATH)/lib/libijkffmpeg.so

include $(PREBUILT_SHARED_LIBRARY)