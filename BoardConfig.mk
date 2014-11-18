# inherit from common hdx
-include device/amazon/hdx-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/amazon/hdx-common/BoardConfigVendor.mk

# Kernel config
TARGET_KERNEL_CONFIG := thor_cyanogenmod_defconfig
BOARD_MKBOOTIMG_ARGS += --dt device/amazon/thor/dt-13.3.2.4.img
#dt-13.4.1.1.img

# Assert
TARGET_OTA_ASSERT_DEVICE := thor

# TWRP
DEVICE_RESOLUTION := 1200x1920
