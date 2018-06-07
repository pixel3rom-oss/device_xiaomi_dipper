#
# Copyright 2016 The Android Open Source Project
# Copyright 2018 Pixel3ROM Project
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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, device/xiaomi/dipper/device.mk)
$(call inherit-product-if-exists, vendor/xiaomi/dipper/dipper-vendor.mk)
$(call inherit-product-if-exists, vendor/xiaomi/sdm845-common/sdm845-common-vendor.mk)

PRODUCT_PACKAGES += \
    Dialer \
    Launcher3QuickStep \
    WallpaperPicker

# STOPSHIP deal with Qualcomm stuff later
# PRODUCT_RESTRICT_VENDOR_FILES := all

PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Android
PRODUCT_NAME := aosp_dipper
PRODUCT_DEVICE := dipper
PRODUCT_MODEL := AOSP on dipper
