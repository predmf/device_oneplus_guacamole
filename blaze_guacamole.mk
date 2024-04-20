#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamole device
$(call inherit-product, device/oneplus/guacamole/device.mk)

# Inherit some common Blaze stuff.
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)
 
# Boot Animation Res
TARGET_BOOT_ANIMATION_RES := 1080

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# GAPPS Variant
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64

# Blaze Maintainer
BLAZE_MAINTAINER := ankit
BLAZE_BUILD_TYPE := OFFICIAL

# Blur Support
TARGET_SUPPORTS_BLUR := true  

# Blaze Extras
TARGET_SUPPORTS_QUICK_TAP := true   
TARGET_USES_AOSP_RECOVERY := true 
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := blaze_guacamole
PRODUCT_DEVICE := guacamole
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := GM1917
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7Pro
PRODUCT_SYSTEM_DEVICE := OnePlus7Pro

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
scr_resolution := 1440
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Build Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus7Pro-user 11 RKQ1.201022.002 2206171030 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := "OnePlus/OnePlus7Pro/OnePlus7Pro:11/RKQ1.201022.002/2206171030:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
