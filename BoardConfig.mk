# inherit from common hdx
-include device/amazon/hdx-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/amazon/hdx-common/BoardConfigVendor.mk

# Kernel config
#TODO: add prebuild kernel 
#TARGET_PREBUILT_KERNEL := device/amazon/thor/kernel
# compatibility sources from msm project (codeaurora) has proper amz kernel sources are not released
#TARGET_KERNEL_SOURCE := kernel/qcom/AU_LINUX_ANDROID_LNX.LA.3.5.1.2.04.04.02.052.004
#TARGET_KERNEL_CONFIG := msm8974-perf_defconfig
#TARGET_KERNEL_SOURCE := kernel/amazon/hdx-common
#TARGET_KERNEL_CONFIG := thor-cm_defconfig 
#BOARD_MKBOOTIMG_ARGS += --dt device/amazon/thor/thor-v2-apq.dtb

TARGET_PREBUILT_KERNEL := device/amazon/thor/hacks/zImage
TARGET_PREBUILT_RECOVERY_KERNEL := device/amazon/thor/hacks/zImage


# Assert
TARGET_OTA_ASSERT_DEVICE := thor

# TWRP
DEVICE_RESOLUTION := 1200x1920
