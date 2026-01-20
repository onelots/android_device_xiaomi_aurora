#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from aurora device
$(call inherit-product, device/xiaomi/aurora/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_aurora
PRODUCT_DEVICE := aurora
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := aurora

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=aurora
