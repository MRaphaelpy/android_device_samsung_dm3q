#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_kalama.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_kalama/mixer_paths_kalama_mtp.xml \
    $(LOCAL_PATH)/configs/audio/resourcemanager_kalama.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_kalama/resourcemanager_kalama_mtp.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 3088
TARGET_SCREEN_WIDTH := 1440

# Display config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/displayconfig.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630947093241269891.xml

# Init
PRODUCT_PACKAGES += \
    init.dm3q.rc

# Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Overlays
PRODUCT_PACKAGES += \
    ApertureResDm3q \
    FrameworksResDm3q \
    LineageResDm3q \
    SettingsProviderResDm3q \
    SystemUIResDm3q \
    WifiResTargetDm3q

# Touch features
PRODUCT_PACKAGES += \
    vendor.lineage.touch-service.samsung

# WiFi firmware symlinks
PRODUCT_PACKAGES += \
    firmware_wlanmdsp.otaupdate_symlink \
    firmware_wlan_mac.bin_symlink \
    firmware_WCNSS_qcom_cfg.ini_symlink

# Power hint
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/powerhint.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/samsung/sm8550-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/samsung/dm3q/dm3q-vendor.mk)

# ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
# PRODUCT_ADB_KEYS := vendor/samsung/dm3q/adbkey.pub

PRODUCT_PACKAGES += \
    pixelatoms-cpp \
    libperfmgr

INFINITY_MAINTAINER := "MRaphaelpy"
TARGET_HAS_UDFPS := true

PRODUCT_SYSTEM_PROPERTIES += \
    ro.product.marketname=Samsung Galaxy S23 Ultra \
    ro.infinity.soc=Snapdragon 8 Gen 2 (SM8550-AC) \
    ro.infinity.battery=5000 mAh \
    ro.infinity.display=3088 x 1440, 120Hz LTPO \
    ro.infinity.camera=200MP + 10MP (Periscope) + 10MP (Telephoto) + 12MP (Ultra-wide)