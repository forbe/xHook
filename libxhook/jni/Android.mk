LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE     := xhook
LOCAL_SRC_FILES  := xh_core.c \
                    xh_map.c \
                    xh_elf.c \
                    xh_jni.c \
                    xh_log.c \
                    xh_version.c
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_CFLAGS     := -Wall -Wextra -Werror
LOCAL_CONLYFLAGS := -std=c11
LOCAL_LDLIBS     := -llog
include $(BUILD_SHARED_LIBRARY)
