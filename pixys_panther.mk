#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Pixysos stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/pixys/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_panther.mk)
$(call inherit-product, device/google/gs201/pixys_common.mk)

include device/google/pantah/panther/device-pixys.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7
PRODUCT_NAME := pixys_panther

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_BATTERY := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
WITH_GMS := true
TARGET_IS_PIXEL := true
TARGET_PIXEL_STAND_SUPPORTED := true
TARGET_IS_PIXEL_7 := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=panther \
    PRIVATE_BUILD_DESC="panther-user 14 UQ1A.240205.002 11224170 release-keys"

BUILD_FINGERPRINT := google/panther/panther:14/UQ1A.240205.002/11224170:user/release-keys

$(call inherit-product, vendor/google/panther/panther-vendor.mk)
