#######################################
# * Netlink cache not implemented
# * Library is not thread safe
#######################################

LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
        attr.c \
        cache.c \
        genl/genl.c \
        genl/family.c \
        handlers.c \
        msg.c \
        netlink.c \
        object.c \
        socket.c \
        dbg.c

LOCAL_C_INCLUDES += \
        device/xiaomi/hermes/libs/nl_2/headers

# Static Library
LOCAL_MODULE := libnl_2
LOCAL_MODULE_TAGS := optional
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES :=
LOCAL_WHOLE_STATIC_LIBRARIES:= libnl_2
LOCAL_SHARED_LIBRARIES:= liblog
LOCAL_MODULE := libnl_2
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
