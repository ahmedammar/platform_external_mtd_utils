# Copyright 2009 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	src/ubinize.c \
	src/common.c \
	src/crc32.c \
	src/libiniparser.c \
	src/dictionary.c \
	src/libubigen.c

LOCAL_CFLAGS = -O2 -Wall
LOCAL_CFLAGS+= -Wpointer-arith -Wwrite-strings -Wstrict-prototypes
LOCAL_CFLAGS+= -Wmissing-prototypes -Winline -D_FILE_OFFSET_BITS=64

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src

LOCAL_MODULE := ubinize
LOCAL_MODULE_TAGS := eng

include $(BUILD_HOST_EXECUTABLE)

# libubi
#
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	src/libubi.c \
	src/libmtd.c \
	src/libscan.c \
	src/libubigen.c \
	src/crc32.c \
	src/common.c

LOCAL_CFLAGS = -O2 -Wall
LOCAL_CFLAGS += -Wall -Wextra -Wwrite-strings -Wno-sign-compare -D_FILE_OFFSET_BITS=64

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src

LOCAL_MODULE := libubi
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

# ubinfo util
#
include $(CLEAR_VARS)

LOCAL_SRC_FILES := src/ubinfo.c

LOCAL_CFLAGS = -O2 -Wall
LOCAL_CFLAGS += -Wall -Wextra -Wwrite-strings -Wno-sign-compare -D_FILE_OFFSET_BITS=64

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := libubi

LOCAL_MODULE := ubinfo
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

# ubiformat util
#
include $(CLEAR_VARS)

LOCAL_SRC_FILES := src/ubiformat.c

LOCAL_CFLAGS = -O2 -Wall
LOCAL_CFLAGS += -Wall -Wextra -Wwrite-strings -Wno-sign-compare -D_FILE_OFFSET_BITS=64

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := libubi

LOCAL_MODULE := ubiformat
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

# ubimkvol util
#
include $(CLEAR_VARS)

LOCAL_SRC_FILES := src/ubimkvol.c

LOCAL_CFLAGS = -O2 -Wall
LOCAL_CFLAGS += -Wall -Wextra -Wwrite-strings -Wno-sign-compare -D_FILE_OFFSET_BITS=64

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := libubi

LOCAL_MODULE := ubimkvol
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

# ubiattach util
#
include $(CLEAR_VARS)

LOCAL_SRC_FILES := src/ubiattach.c

LOCAL_CFLAGS = -O2 -Wall
LOCAL_CFLAGS += -Wall -Wextra -Wwrite-strings -Wno-sign-compare -D_FILE_OFFSET_BITS=64

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := libubi

LOCAL_MODULE := ubiattach
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

# ubidetach util
#
include $(CLEAR_VARS)

LOCAL_SRC_FILES := src/ubidetach.c

LOCAL_CFLAGS = -O2 -Wall
LOCAL_CFLAGS += -Wall -Wextra -Wwrite-strings -Wno-sign-compare -D_FILE_OFFSET_BITS=64

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := libubi

LOCAL_MODULE := ubidetach
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

# ubiupdatevol util
#
include $(CLEAR_VARS)

LOCAL_SRC_FILES := src/ubiupdatevol.c

LOCAL_CFLAGS = -O2 -Wall
LOCAL_CFLAGS += -Wall -Wextra -Wwrite-strings -Wno-sign-compare -D_FILE_OFFSET_BITS=64

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := libubi

LOCAL_MODULE := ubiupdatevol
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
