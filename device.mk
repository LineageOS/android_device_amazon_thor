DEVICE_FOLDER := device/amazon/thor

# Set dirty regions off
PRODUCT_PROPERTY_OVERRIDES += \
	hwui.render_dirty_regions=false

# Disable ext sdcard
PRODUCT_CHARACTERISTICS := \
	tablet,nosdcard

# Inherit from hdx
$(call inherit-product, device/amazon/hdx-common/hdx-common.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/amazon/thor/thor-vendor.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_FOLDER)/overlay

PRODUCT_PROPERTY_OVERRIDES += \
	ro.qcom.ad=1 \
	ro.usb.pid=000c \
