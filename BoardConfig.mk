# config.mk
#
# Product-specific compile-time definitions
#

TARGET_BOARD_PLATFORM := bcm2710

TARGET_USES_AOSP := true
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_NO_RECOVERY := true
TARGET_NO_RADIOIMAGE := true

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
TARGET_USES_GRALLOC1 := true
BOARD_USES_MINIGBM := true
TARGET_USES_HWC2 := true
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000

BOARD_USES_GENERIC_AUDIO := true

TARGET_USES_64_BIT_BINDER := true

BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_SND_MONITOR := true
USE_XML_AUDIO_POLICY_CONF := 1

BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
BOARD_VNDK_VERSION := current

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

USE_OPENGL_RENDERER := true
TARGET_USES_HWC2 := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

TARGET_USERIMAGES_USE_F2FS := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736 # 1.5G
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_USERDATAIMAGE_PARTITION_SIZE := 134217728 # 128M
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_CACHEIMAGE_PARTITION_SIZE := 100663296
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs

# for future optimization
#BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE
#BOARD_PRODUCT_SERVICESIMAGE_FILE_SYSTEM_TYPE
#BOARD_ODMIMAGE_FILE_SYSTEM_TYPE

BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_SEPOLICY_DIRS += device/pifoundation/rpi3/sepolicy
BOARD_PLAT_PUBLIC_SEPOLICY_DIR := device/pifoundation/rpi3/sepolicy/public
BOARD_PLAT_PRIVATE_SEPOLICY_DIR := device/pifoundation/rpi3/sepolicy/private

BOARD_GPU_DRIVERS := vc4

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

TARGET_NO_RPC := true

USE_CAMERA_STUB := true

# Build a separate vendor.img
TARGET_COPY_OUT_VENDOR := vendor
# Use mkf2fs to create f2fs images
BOARD_VENDORIMAGE_PARTITION_SIZE := 134217728 # 128M
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := f2fs
