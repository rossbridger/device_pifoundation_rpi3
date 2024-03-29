#
# Copyright 2015 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/google/atv/products/atv_base.mk)

$(call inherit-product, device/pifoundation/rpi3/device-rpi3.mk)
$(call inherit-product-if-exists, vendor/pifoundation/rpi3/device-vendor-rpi3.mk)

PRODUCT_NAME := atv_rpi3
PRODUCT_DEVICE := rpi3
PRODUCT_BRAND := Android
PRODUCT_MODEL := Android TV on bcm2710
PRODUCT_MANUFACTURER := Raspberry Pi Foundation
PRODUCT_RESTRICT_VENDOR_FILES := true

PRODUCT_AAPT_PREF_CONFIG := tvdpi
PRODUCT_CHARACTERISTICS := tv

# It takes too much GPU memory
PRODUCT_COPY_FILES += \
    device/pifoundation/rpi3/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGES += \
    Launcher3QuickStep \
    WallpaperPicker

