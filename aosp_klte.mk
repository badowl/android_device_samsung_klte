# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from bacon device
$(call inherit-product, device/samsung/klte/full_klte.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cos/common.mk)

COS_RELEASE=true
PRODUCT_NAME := cos_klte
PRODUCT_DEVICE := klte
PRODUCT_MANUFACTURER := Samsung
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
