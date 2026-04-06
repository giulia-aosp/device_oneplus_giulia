#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from giulia device
$(call inherit-product, device/oneplus/giulia/device.mk)

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Axion flags
AXION_MAINTAINER := Genoxci
AXION_PROCESSOR := Snapdragon®_8_Gen_3
AXION_CAMERA_FRONT_INFO := 16
AXION_CAMERA_REAR_INFO := 50,50,8
TARGET_ENABLE_BLUR := true
TORCH_STR_SUPPORTED := true
TARGET_INCLUDE_AXFX := true

PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := walt
GPU_FREQS_PATH := /sys/class/kgsl/kgsl-3d0/devfreq/available_frequencies
GPU_MIN_FREQ_PATH := /sys/class/kgsl/kgsl-3d0/devfreq/min_freq

# Device identifier
PRODUCT_NAME := lineage_giulia
PRODUCT_DEVICE := giulia
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2691

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 16 BP2A.250605.015 1773715705842 release-keys" \
    BuildFingerprint=OnePlus/CPH2691IN/OP5D3BL1:16/UKQ1.231108.001/V.R4T3.55d77f2-32cda92-330177c:user/release-keys \
    DeviceName=OP5D3BL1 \
    DeviceProduct=CPH2691 \
    SystemDevice=OP5D3BL1 \
    SystemName=CPH2691
