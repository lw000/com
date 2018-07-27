LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

#LOCAL_ARM_MODE := arm

LOCAL_MODULE := lib_log4z_static

LOCAL_MODULE_FILENAME := liblog4z

LOCAL_SRC_FILES := ../log4z.cpp \
                   ../log4z_android_ios_ext.cpp \

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../ \
                    
LOCAL_EXPORT_LDLIBS := -llog -lz

include $(BUILD_STATIC_LIBRARY)