#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X689B device
$(call inherit-product, device/infinix/X689B/device.mk)

PRODUCT_DEVICE := X689B
PRODUCT_NAME := twrp_X689B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Hot 10S
PRODUCT_MANUFACTURER := INFINIX MOBILITY LIMITED

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x689b_h696-user 11 RP1A.200720.011 346461 release-keys"

BUILD_FINGERPRINT := Infinix/X689B-GL/X689B:11/RP1A.200720.011/230606V329:user/release-keys
