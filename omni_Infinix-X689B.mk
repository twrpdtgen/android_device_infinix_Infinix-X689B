#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Infinix-X689B device
$(call inherit-product, device/infinix/Infinix-X689B/device.mk)

PRODUCT_DEVICE := Infinix-X689B
PRODUCT_NAME := omni_Infinix-X689B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X689B
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x689b_h696-user 11 RP1A.200720.011 91744 release-keys"

BUILD_FINGERPRINT := Infinix/X689B-GL/Infinix-X689B:11/RP1A.200720.011/210326V170:user/release-keys
