#
# Copyright 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)
# Release name
PRODUCT_RELEASE_NAME := klte
# Boot animation
# TARGET_SCREEN_HEIGHT := 1920
# TARGET_SCREEN_WIDTH := 1080
# Inherit some common Slim stuff.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from klte device
$(call inherit-product, device/samsung/klte/full_klte.mk)

$(call inherit-product, vendor/slim/config/common_full_phone.mk)
# Inherit device configuration

# $(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

PRODUCT_DEVICE := klte
PRODUCT_NAME := slim_klte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := G900x
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BRAND := samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := klte
TARGET_VENDOR_DEVICE_NAME := G900x
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=G900x PRODUCT_NAME=klte

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=samsung/klte/G900x:6.0.1/MHC19Q/ZNH2KAS1KN:user/release-keys \
    PRIVATE_BUILD_DESC="klte-user 6.0.1 MHC19Q ZNH2KAS1KN release-keys"
endif
