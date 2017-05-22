#$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/samsung/klte/full_klte.mk)

# Inherit some propietary XOSP stuff
$(call inherit-product, vendor/xosp/config/xosp.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1090
TARGET_SCREEN_HEIGHT := 1920

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := klte
PRODUCT_NAME := xosp_klte
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_RELEASE_NAME := klte
RELEASE_TYPE := XOSP_OFFICIAL

