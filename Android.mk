ifneq ($(filter me172v,$(TARGET_DEVICE)),)

LOCAL_PATH := device/asus/me172v

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
