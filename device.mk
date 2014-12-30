DEVICE_FOLDER := device/amazon/thor

# Inherit from hdx
$(call inherit-product, device/amazon/hdx-common/hdx-common.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/amazon/thor/thor-vendor.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_FOLDER)/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/amazon/thor/hacks/zImage
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# hdx old bootloader dtb compatibility fix + bootloader exploit patch ?
# override bootimg to manually append propietary dtb extracted from 4.5.2 kernel
BOARD_CUSTOM_BOOTIMG_MK := device/amazon/thor/mkboot.mk




