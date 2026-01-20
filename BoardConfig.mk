#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/aurora

# Include the common OEM chipset BoardConfig.
include device/xiaomi/sm8650-common/BoardConfigCommon.mk

# Include the proprietary files BoardConfig.
include vendor/xiaomi/aurora/BoardConfigVendor.mk
