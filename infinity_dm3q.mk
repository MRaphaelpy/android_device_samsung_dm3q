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

# Inherit from the infinity configuration.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_NAME := infinity_dm3q
PRODUCT_DEVICE := dm3q
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-S918B
PRODUCT_MANUFACTURER := Samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

INFINITY_BUILD_TYPE := UNOFFICIAL

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1440

# Maintainer
INFINITY_MAINTAINER := MRaphaelpy

TARGET_HAS_UDFPS := true

# AboutPhone Info
PRODUCT_SYSTEM_PROPERTIES += \
    ro.product.marketname=Samsung Galaxy S23 Ultra \
    ro.infinity.soc=Snapdragon 8 Gen 2 (SM8550-AC) \
    ro.infinity.battery=5000 mAh (45W Fast Charging, 15W Wireless, 4.5W PowerShare) \
    ro.infinity.display=3088 x 1440, 1-120Hz LTPO AMOLED 2X \
    ro.infinity.camera=200MP + 10MP (Periscope) + 10MP (Telephoto) + 12MP (Ultra-wide) \
    ro.infinity.features=S-Pen, IP68, Gorilla Glass Victus 2
