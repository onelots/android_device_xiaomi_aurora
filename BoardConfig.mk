#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/aurora

# Include the common OEM chipset BoardConfig.
include device/xiaomi/sm8650-common/BoardConfigCommon.mk

# Kernel Modules
MODULE_LISTS_PATH := $(DEVICE_PATH)/modules
BOARD_SYSTEM_KERNEL_MODULES_LOAD := $(strip $(shell cat $(MODULE_LISTS_PATH)/modules.load.system_dlkm))
BOARD_VENDOR_KERNEL_MODULES_BLOCKLIST_FILE := $(TARGET_KERNEL_SOURCE)/modules.vendor_blocklist.msm.pineapple
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(MODULE_LISTS_PATH)/modules.load))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_BLOCKLIST_FILE := $(BOARD_VENDOR_KERNEL_MODULES_BLOCKLIST_FILE)
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(MODULE_LISTS_PATH)/modules.load.first_stage))
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(MODULE_LISTS_PATH)/modules.load.first_stage $(MODULE_LISTS_PATH)/modules.load.recovery))
BOOT_KERNEL_MODULES := $(BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD)
SYSTEM_KERNEL_MODULES := $(BOARD_SYSTEM_KERNEL_MODULES_LOAD)

TARGET_KERNEL_EXT_MODULE_ROOT := kernel/xiaomi/sm8650-modules
TARGET_KERNEL_EXT_MODULES := \
    qcom/opensource/mmrm-driver \
    qcom/opensource/mm-drivers/hw_fence \
    qcom/opensource/mm-drivers/msm_ext_display \
    qcom/opensource/mm-drivers/sync_fence \
    qcom/opensource/mm-sys-kernel/ubwcp \
    qcom/opensource/display-drivers/msm \
    qcom/opensource/touch-drivers \
    qcom/opensource/audio-kernel \
    qcom/opensource/camera-kernel \
    qcom/opensource/graphics-kernel \
    qcom/opensource/video-driver \
    qcom/opensource/eva-kernel \
    qcom/opensource/dsp-kernel \
    qcom/opensource/synx-kernel \
    qcom/opensource/securemsm-kernel \
    qcom/opensource/spu-kernel \
    qcom/opensource/dataipa/drivers/platform/msm \
    qcom/opensource/datarmnet/core \
    qcom/opensource/datarmnet-ext/mem \
    qcom/opensource/datarmnet-ext/aps \
    qcom/opensource/datarmnet-ext/offload \
    qcom/opensource/datarmnet-ext/shs \
    qcom/opensource/datarmnet-ext/perf \
    qcom/opensource/datarmnet-ext/perf_tether \
    qcom/opensource/datarmnet-ext/sch \
    qcom/opensource/datarmnet-ext/wlan \
    qcom/opensource/bt-kernel \
    qcom/opensource/wlan/platform \
    qcom/opensource/wlan/qcacld-3.0/.kiwi_v2 \
    nxp/opensource/driver

# Board
TARGET_BOOTLOADER_BOARD_NAME := aurora

# Display
TARGET_SCREEN_DENSITY := 560

# Partitions
BOARD_SUPER_PARTITION_SIZE := 9663676416

# Properties
DEVICE_PROPERTIES_PATH := $(DEVICE_PATH)/properties
TARGET_ODM_PROP += $(DEVICE_PROPERTIES_PATH)/odm.prop
TARGET_VENDOR_PROP += $(DEVICE_PROPERTIES_PATH)/vendor.prop

# VINTF
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DEVICE_PATH)/compatibility_matrix.xml

# Include the proprietary files BoardConfig.
include vendor/xiaomi/aurora/BoardConfigVendor.mk
