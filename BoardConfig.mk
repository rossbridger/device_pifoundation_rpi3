# config.mk
#
# Product-specific compile-time definitions
#

TARGET_BOARD_PLATFORM := bcm2710
TARGET_BOARD_INFO_FILE := device/pifoundation/rpi3/board-info.txt

TARGET_USES_INTERACTION_BOOST := true

TARGET_USES_AOSP := true
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := cortex-a53
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_NO_RECOVERY := true
TARGET_USES_OVERLAY := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
TARGET_USES_GRALLOC1 := true
BOARD_USES_MINIGBM := true
TARGET_USES_HWC2 := true
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000

BOARD_USES_GENERIC_AUDIO := true

BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_SND_MONITOR := true

TARGET_USES_ION := true


# Some framework code requires this to enable BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
USE_BLUETOOTH_BCM4343 := true # Raspberry Pi 3B uses BCM43438 chip to provide bluetooth/wifi
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pifoundation/rpi3/bluetooth

BOARD_WLAN_DEVICE := bcmdhd
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211

BOARD_HOSTAPD_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_HIDL_FEATURE_DISABLE_AP_MAC_RANDOMIZATION := true

USE_OPENGL_RENDERER := true
TARGET_USES_HWC2 := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x02000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 671088640 # 640M
BOARD_USERDATAIMAGE_PARTITION_SIZE := 134217728 # 128M


BOARD_FLASH_BLOCK_SIZE := 4096


BOARD_SEPOLICY_DIRS += device/pifoundation/rpi3/sepolicy
BOARD_PLAT_PUBLIC_SEPOLICY_DIR := device/pifoundation/rpi3/sepolicy/public
BOARD_PLAT_PRIVATE_SEPOLICY_DIR := device/pifoundation/rpi3/sepolicy/private

TARGET_FS_CONFIG_GEN := device/pifoundation/rpi3/config.fs

BOARD_EGL_CFG := device/pifoundation/rpi3/egl.cfg

BOARD_GPU_DRIVERS := vc4

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

TARGET_NO_RPC := true


#Enable Peripheral Manager
TARGET_PER_MGR_ENABLED := true

USE_CAMERA_STUB := true

# Build a separate vendor.img
TARGET_COPY_OUT_VENDOR := vendor
# Use mke2fs to create ext4 images
BOARD_VENDORIMAGE_PARTITION_SIZE := 134217728 # 128M
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := f2fs

TARGET_USES_MKE2FS := true

BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

DEVICE_MANIFEST_FILE := device/pifoundation/rpi3/manifest.xml
DEVICE_MATRIX_FILE   := device/pifoundation/rpi3/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := device/pifoundation/rpi3/device_framework_matrix.xml

