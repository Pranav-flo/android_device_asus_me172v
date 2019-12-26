LOCAL_PATH := device/asus/me172v

TARGET_BOARD_PLATFORM := me172v              # From ro.mediatek.platform, but lowercase value
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME :=      # From ro.product.board


# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true            # To add info about F2FS Filesystem Data Block
# Put The Size of your Recovery Partition below, get it from your "MT****_Android_scatter.txt"
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15648
BOARD_CHARGER_SHOW_PERCENTAGE := true

# TWRP stuff
TW_EXCLUDE_SUPERSU := true                     # true/false: Add SuperSU or not
DEVICE_RESOLUTION := 600x1024                 # The Resolution of your Device
TARGET_SCREEN_HEIGHT := 1024                     # The height
TARGET_SCREEN_WIDTH := 600                      # The width


TW_INCLUDE_NTFS_3G := true                    # Include NTFS Filesystem Support
TW_INCLUDE_FUSE_EXFAT := true                 # Include Fuse-ExFAT Filesystem Support
TWRP_INCLUDE_LOGCAT := true                   # Include LogCat Binary
TW_INCLUDE_FB2PNG := true                     # Include Screenshot Support
TW_DEFAULT_LANGUAGE := en                     # Set Default Language 
TW_EXTRA_LANGUAGES := false

# Kernel
TARGET_IS_64_BIT := false                     # true/false: Determine if the device is 64-bit or not
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/zImage
# Get the CMDLine, Base, Pagesize and offsets from Unpacked recovery image and put below
BOARD_KERNEL_CMDLINE := mem=800M root=/dev/ram0 rw initrd=0x01400000,32M console=ttyS0,115200n8 init=/init
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048


# Check whether the device is 64-bit or 32-bit, and then include the TWRPBuilder Part
ifeq ($(TARGET_IS_64_BIT),true)
include device/generic/twrpbuilder/BoardConfig64.mk   # If the device Is 64-bit, it'll be used
else
include device/generic/twrpbuilder/BoardConfig32.mk   # If the device Is 32-bit, it'll be used
endif