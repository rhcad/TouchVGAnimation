# Copyright (c) 2013, Zhang Yungui, https://github.com/rhcad/touchvg
#
LOCAL_PATH := $(call my-dir)
VGINC      := $(LOCAL_PATH)/../../../core/inc
VGSRC      := ../../../core/src
MONK_PATH  := ../../../thirdparty/MonkVG/projects/MonkVG-Android/obj/local/armeabi
MONK_INC   := $(LOCAL_PATH)/../../../thirdparty/MonkVG/include
SHAPE_PATH := ../../../thirdparty/Shape/android/touchvgshape/obj/local/armeabi
SHAPE_INC  := $(LOCAL_PATH)/../../../thirdparty/Shape/core/inc

include $(CLEAR_VARS)
LOCAL_MODULE    := libOpenVG
LOCAL_SRC_FILES := $(MONK_PATH)/libOpenVG.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libOpenVGU
LOCAL_SRC_FILES := $(MONK_PATH)/libOpenVGU.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libTouchVGShape
LOCAL_SRC_FILES := $(SHAPE_PATH)/libTouchVGShape.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE           := touchvg
LOCAL_LDLIBS           := -L$(SYSROOT)/usr/lib -llog -lGLESv1_CM -lGLESv2
LOCAL_PRELINK_MODULE   := false
LOCAL_CFLAGS           := -frtti -Wall -Wextra -Wno-unused-parameter
LOCAL_STATIC_LIBRARIES := libOpenVGU libOpenVG libTouchVGShape

ifeq ($(TARGET_ARCH),arm)
# Ignore "note: the mangling of 'va_list' has changed in GCC 4.4"
LOCAL_CFLAGS += -Wno-psabi
endif

LOCAL_C_INCLUDES := $(VGINC) \
                    $(VGINC)/glcanvas \
                    $(MONK_INC)/MonkVG \
                    $(SHAPE_INC)/canvas \
                    $(SHAPE_INC)/test

LOCAL_SRC_FILES  := $(VGSRC)/glcanvas/GiOpenVGCanvas.cpp \
                    $(VGSRC)/glcanvas/testvgcanvas.cpp \
                    touchvg_java_wrap.cpp

include $(BUILD_SHARED_LIBRARY)
