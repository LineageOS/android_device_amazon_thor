# Kernel config
TARGET_KERNEL_SOURCE := kernel/amazon/hdx-common
TARGET_KERNEL_CONFIG := thor-cyanogenmod_defconfig

# inherit from common hdx
-include device/amazon/hdx-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/amazon/hdx-common/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := thor

# TWRP
DEVICE_RESOLUTION := 1200x1920

# CUSTOM RELEASE TOOLS FOR EXTRA LINKS IN UPDATER-SCRIPT
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/amazon/thor/releasetools/ota_from_target_files

