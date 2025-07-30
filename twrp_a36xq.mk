#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a36xq device
$(call inherit-product, device/samsung/a36xq/device.mk)

PRODUCT_DEVICE := a36xq
PRODUCT_NAME := twrp_a36xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A366E
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a36xqnsxx-user 15 AP3A.240905.015.A2 A366EXXS4AYF9 test-keys"

BUILD_FINGERPRINT := samsung/a36xqnsxx/a36xq:15/AP3A.240905.015.A2/A366EXXS4AYF9:user/test-keys
