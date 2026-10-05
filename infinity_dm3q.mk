#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/samsung/dm3q/device.mk)

# Inherit from the Lineage configuration.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

TARGET_HAS_UDFPS := true

TARGET_HAVE_SPEN := true

PRODUCT_NAME := infinity_dm3q
PRODUCT_DEVICE := dm3q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S918B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="dm3qxxx-user 16 BP2A.250605.031.A3 S918BXXS8EZA1 release-keys" \
    BuildFingerprint=samsung/dm3qxxx/dm3q:16/BP2A.250605.031.A3/S918BXXS8EZA1:user/release-keys \
    DeviceProduct=dm3q \
    SystemName=dm3qxxx
