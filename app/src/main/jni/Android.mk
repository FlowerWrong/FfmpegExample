LOCAL_PATH := $(call my-dir)

# FFmpeg library
include $(CLEAR_VARS)
ifeq ($(TARGET_ARCH_ABI), armeabi-v7a)
    include $(LOCAL_PATH)/ffmpeg-armv7a/Android.mk
else
    ifeq ($(TARGET_ARCH_ABI), arm64-v8a)
        include $(LOCAL_PATH)/ffmpeg-arm64/Android.mk
    else
        ifeq ($(TARGET_ARCH_ABI), x86)
            include $(LOCAL_PATH)/ffmpeg-x86/Android.mk
        else
            ifeq ($(TARGET_ARCH_ABI), x86_64)
                include $(LOCAL_PATH)/ffmpeg-x86_64/Android.mk
            else
                ifeq ($(TARGET_ARCH_ABI), armeabi)
                    include $(LOCAL_PATH)/ffmpeg-armv5/Android.mk
                endif
            endif
        endif
    endif
endif

# Program
include $(CLEAR_VARS)

ifeq ($(TARGET_ARCH_ABI), mips)
    $(warning "No support for mips")
else
    ifeq ($(TARGET_ARCH_ABI), mips64)
        $(warning "No support for mips64")
    else
        LOCAL_MODULE := helloffmpeg
        LOCAL_SRC_FILES := com_liveneeq_ffmpegexample_MainActivity.c

        $(warning $(TARGET_ARCH_ABI))

        ifeq ($(TARGET_ARCH_ABI), armeabi-v7a)
            LOCAL_PATH := /home/yy/AndroidStudioProjects/FfmpegExample/app/src/main/jni
            LOCAL_C_INCLUDES += $(LOCAL_PATH)/ffmpeg-armv7a/include
        else
            ifeq ($(TARGET_ARCH_ABI), arm64-v8a)
                LOCAL_PATH := /home/yy/AndroidStudioProjects/FfmpegExample/app/src/main/jni
                LOCAL_C_INCLUDES += $(LOCAL_PATH)/ffmpeg-arm64/include
            else
                ifeq ($(TARGET_ARCH_ABI), x86)
                    LOCAL_PATH := /home/yy/AndroidStudioProjects/FfmpegExample/app/src/main/jni
                    LOCAL_C_INCLUDES += $(LOCAL_PATH)/ffmpeg-x86/include
                else
                    ifeq ($(TARGET_ARCH_ABI), x86_64)
                        LOCAL_PATH := /home/yy/AndroidStudioProjects/FfmpegExample/app/src/main/jni
                        LOCAL_C_INCLUDES += $(LOCAL_PATH)/ffmpeg-x86_64/include
                    else
                        ifeq ($(TARGET_ARCH_ABI), armeabi)
                            LOCAL_PATH := /home/yy/AndroidStudioProjects/FfmpegExample/app/src/main/jni
                            LOCAL_C_INCLUDES += $(LOCAL_PATH)/ffmpeg-armv5/include
                        endif
                    endif
                endif
            endif
        endif

        LOCAL_LDLIBS := -llog
        LOCAL_SHARED_LIBRARIES := libijkffmpeg
        include $(BUILD_SHARED_LIBRARY)
    endif
endif