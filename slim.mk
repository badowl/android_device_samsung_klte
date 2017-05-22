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
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440
# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)
# Inherit device configuration
$(call inherit-product, device/samsung/klte/aosp_klte.mk)
PRODUCT_DEVICE := klte
PRODUCT_NAME := slim_klte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := G900x
PRODUCT_MANUFACTURER := Samsung
PRODUCT_RESTRICT_VENDOR_FILES := false
PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_NAME=klte\
    BUILD_FINGERPRINT=samsung/klte/G900x:6.0.1/MHC19Q/ZNH2KAS1KN:user/release-keys \
    PRIVATE_BUILD_DESC="klte-user 6.0.1 MHC19Q ZNH2KAS1KN release-keys"
