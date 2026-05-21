#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common AOSP configurations
$(call inherit-product, build/make/target/product/full_base_telephony.mk)
$(call inherit-product, build/make/target/product/core_64_bit.mk)

# Inherit device-specific configurations
$(call inherit-product, device/xiaomi/fuxi/device.mk)

# Inherit LineageOS configurations
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)
TARGET_DISABLE_EPPE := true
TARGET_OPTIMIZED_DEXOPT := true
TARGET_ENABLE_BLUR := true
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_DEVICE := fuxi
PRODUCT_NAME := lineage_fuxi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2211133C
PRODUCT_MANUFACTURER := Xiaomi

INFINITY_MAINTAINER := lizhi
TARGET_HAS_UDFPS := true
WITH_GAPPS := true

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_SYSTEM_NAME := fuxi
PRODUCT_SYSTEM_DEVICE := fuxi

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME) \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    PRODUCT_MANUFACTURER=Xiaomi

BUILD_FINGERPRINT := Xiaomi/fuxi/fuxi:16/BP2A.250605.031.A3/OS3.0.2.0.WMCCNXM:user/release-keys

