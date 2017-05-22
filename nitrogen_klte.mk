# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 1920

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/nitrogen/products/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/klte/full_klte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := klte
PRODUCT_NAME := nitrogen_klte
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Samsung Galaxy S5
PRODUCT_MANUFACTURER := Samsung
PRODUCT_RESTRICT_VENDOR_FILES := false
