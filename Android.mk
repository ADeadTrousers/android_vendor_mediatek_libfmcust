ifneq ($(BOARD_HAVE_QCOM_FM),true)
ifneq ($(BOARD_HAVE_BCM_FM),true)
ifneq ($(BOARD_HAVE_SLSI_FM),true)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    custom.cpp 
	
LOCAL_C_INCLUDES := $(JNI_H_INCLUDE)
	
LOCAL_SHARED_LIBRARIES := \
    libcutils \
    liblog
    
LOCAL_PRELINK_MODULE := false

LOCAL_MODULE := libfmcust
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

endif # BOARD_HAVE_SLSI_FM
endif # BOARD_HAVE_BCM_FM
endif # BOARD_HAVE_QCOM_FM
