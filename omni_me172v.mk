$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Replace $$DEVICE$$ with your Device Name's Value.
# Replace $$BRAND$$ with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/asus/me172v/prebuilt/zImage:kernel

PRODUCT_DEVICE := me172v
PRODUCT_NAME := omni_me172v
PRODUCT_BRAND := asus
PRODUCT_MODEL := me172v
PRODUCT_MANUFACTURER := asus

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/etc/recovery.fstab:root/etc/recovery.fstab \
    $(LOCAL_PATH)/recovery/root/init.goldfish.rc:root/init.goldfish.rc \
    $(LOCAL_PATH)/recovery/root/init.rc:root/init.rc \
    $(LOCAL_PATH)/recovery/root/init.trace.rc:root/init.trace.rc \
    $(LOCAL_PATH)/recovery/root/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/recovery/root/init.wmt.rc:root/init.wmt.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.rc:root/ueventd.rc
