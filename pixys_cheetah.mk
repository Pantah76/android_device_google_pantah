#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Pixysos stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/pixys/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
$(call inherit-product, device/google/gs201/pixys_common.mk)

include device/google/pantah/cheetah/device-pixys.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := pixys_cheetah

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_BATTERY := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
WITH_GMS := true
TARGET_HAS_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1440
EXTRA_UDFPS_ANIMATIONS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 14 UQ1A.240205.002 11224170 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:14/UQ1A.240205.002/11224170:user/release-keys

$(call inherit-product, vendor/google/cheetah/cheetah-vendor.mk)
