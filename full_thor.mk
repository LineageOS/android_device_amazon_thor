# Inherit from those products. Most specific first.
$(call inherit-product, device/amazon/thor/device.mk)

# wifi-only device
PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_NAME := full_thor
PRODUCT_DEVICE := thor
PRODUCT_BRAND := google
PRODUCT_MODEL := Kindle Fire HDX
PRODUCT_MANUFACTURER := amazon
