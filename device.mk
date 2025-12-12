#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 3088
TARGET_SCREEN_WIDTH := 1440

# Init
PRODUCT_PACKAGES += \
    init.dm3q.rc

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResDm3q \
    LineageResDm3q \
    SystemUIResDm3q \
    WifiResTargetDm3q

# S-Pen
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml

# WiFi firmware symlinks
PRODUCT_PACKAGES += \
    firmware_wlanmdsp.otaupdate_symlink \
    firmware_wlan_mac.bin_symlink \
    firmware_WCNSS_qcom_cfg.ini_symlink

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/samsung/sm8550-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/samsung/dm3q/dm3q-vendor.mk)

# AboutPhone Info
PRODUCT_SYSTEM_PROPERTIES += \
    ro.product.marketname=Samsung Galaxy S23 Ultra \
    ro.infinity.soc=Snapdragon 8 Gen 2 (SM8550-AC) \
    ro.infinity.battery=5000 mAh \
    ro.infinity.display=3088 x 1440, 120Hz LTPO \
    ro.infinity.camera=200MP + 10MP (Periscope) + 10MP (Telephoto) + 12MP (Ultra-wide)
