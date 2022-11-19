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

# Inherit from veux device
$(call inherit-product, device/redmi/veux/device.mk)

PRODUCT_DEVICE := veux
PRODUCT_NAME := omni_veux
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := VEUX
PRODUCT_MANUFACTURER := redmi

PRODUCT_GMS_CLIENTID_BASE := android-redmi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_veux-eng 12 SP2A.220405.004 eng.yu.20221112.061954 test-keys"

BUILD_FINGERPRINT := Redmi/twrp_veux/veux:12/SP2A.220405.004/yu11120612:eng/test-keys
