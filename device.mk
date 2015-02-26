DEVICE_FOLDER := device/amazon/thor

# Set dirty regions off
PRODUCT_PROPERTY_OVERRIDES += \
	hwui.render_dirty_regions=false

# RIL turn off
PRODUCT_PROPERTY_OVERRIDES += \
	keyguard.no_require_sim=1 \
	ro.radio.use-ppp=no \
	ro.config.nocheckin=yes \
	ro.radio.noril=yes

# wifi-only device
PRODUCT_PROPERTY_OVERRIDES += \
	ro.carrier=wifi-only

# Inherit from hdx
$(call inherit-product, device/amazon/hdx-common/hdx-common.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/amazon/thor/thor-vendor.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_FOLDER)/overlay


