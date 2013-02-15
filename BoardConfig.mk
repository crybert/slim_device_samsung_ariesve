# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/ariesve/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/samsung/ariesve/include

TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_NO_SECURE_PLAYBACK
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT -DSAMSUNG_CAMERA_QCOM -DFFC_BROKEN_MIRROR
COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

TARGET_BOOTLOADER_BOARD_NAME := ariesve
TARGET_OTA_ASSERT_DEVICE := ariesve,GT-I9001

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_NO_INITLOGO := true

TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480



# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WLAN_DEVICE                := bcm4329
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
WIFI_BAND                        := 802_11_ABG
WIFI_DRIVER_MODULE_PATH          := "/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_STA          := "/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP           := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME          := "dhd"
WIFI_DRIVER_MODULE_ARG           := "iface_name=wlan0 firmware_path=/vendor/firmware/fw_bcm4329.bin nvram_path=/vendor/firmware/nvram_net.txt"

BOARD_KERNEL_BASE := 0x00400000
BOARD_KERNEL_PAGESIZE := 4096

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
TARGET_NEEDS_BLUETOOTH_INIT_DELAY := true

BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"

BOARD_USES_LIBSECRIL_STUB := true


BOARD_USES_QCOM_AUDIO_RESETALL := true
BOARD_USES_LEGACY_RIL := true
BOARD_HAVE_SAMSUNG_AUDIO := true
#TARGET_USES_QCOM_LPA := true

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_HAVE_QCOM_FM := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := si4709

BOARD_EGL_CFG := device/samsung/ariesve/config/egl.cfg

USE_OPENGL_RENDERER := true

TARGET_NO_HW_VSYNC := false
TARGET_USES_C2D_COMPOSITION := true

# QCOM webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

BOARD_NEEDS_MEMORYHEAPPMEM := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_GPS := true
#BOARD_USES_QCOM_AUDIO_LPA := true


BOARD_USE_LEGACY_TOUCHSCREEN := true

# Camera stuff
BOARD_USES_LEGACY_OVERLAY := true
BOARD_CAMERA_USE_MM_HEAP := true
TARGET_DISABLE_ARM_PIE := true

TARGET_PROVIDES_LIBLIGHTS := true

BOARD_VENDOR_QCOM_AMSS_VERSION := 6225
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x30
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

TARGET_USERIMAGES_USE_EXT4 := true

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 28

# Boot Animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# Begin recovery stuff
#
# Partition sizes must match your phone.
# For the Galaxy S Plus, these are calculated from /proc/partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 7864320
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 545259520
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1447034880
BOARD_CACHEIMAGE_PARTITION_SIZE := 104857600
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_SDCARD_INTERNAL := true
#TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/ariesve/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/ariesve/recovery/graphics.c
TARGET_RECOVERY_INITRC := device/samsung/ariesve/config/init.recovery.rc
TARGET_RECOVERY_FSTAB := device/samsung/ariesve/recovery.fstab
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
# End recovery stuff

TARGET_PREBUILT_KERNEL := device/samsung/ariesve/prebuilt/zImage

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

