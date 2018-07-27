LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

#LOCAL_ARM_MODE := arm

LOCAL_MODULE := lib_jsoncpp_static

LOCAL_MODULE_FILENAME := libjsoncpp

LOCAL_SRC_FILES := ../src/json_reader.cpp \
                   ../src/json_value.cpp \
                   ../src/json_valueiterator.inl \
                   ../src/json_writer.cpp \

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../include \
                    
LOCAL_EXPORT_LDLIBS := -llog -lz

include $(BUILD_STATIC_LIBRARY)