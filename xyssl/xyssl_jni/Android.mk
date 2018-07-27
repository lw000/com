LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := lib_xyssl_static

LOCAL_MODULE_FILENAME := libxyssl

LOCAL_SRC_FILES := ../xyssl/src/aes.c \
                   ../xyssl/src/arc4.c \
                   ../xyssl/src/base64.c \
                   ../xyssl/src/bignum.c \
                   ../xyssl/src/certs.c \
                   ../xyssl/src/debug.c \
                   ../xyssl/src/des.c \
                   ../xyssl/src/dhm.c \
                   ../xyssl/src/havege.c \
                   ../xyssl/src/md2.c \
                   ../xyssl/src/md4.c \
                   ../xyssl/src/md5.c \
                   ../xyssl/src/net.c \
                   ../xyssl/src/padlock.c \
                   ../xyssl/src/rsa.c \
                   ../xyssl/src/sha1.c \
                   ../xyssl/src/sha2.c \
                   ../xyssl/src/sha4.c \
                   ../xyssl/src/ssl_cli.c \
                   ../xyssl/src/ssl_srv.c \
                   ../xyssl/src/ssl_tls.c \
                   ../xyssl/src/timing.c \
                   ../xyssl/src/x509parse.c \

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../xyssl/include \
                    
LOCAL_EXPORT_LDLIBS := -llog -lz

include $(BUILD_STATIC_LIBRARY)