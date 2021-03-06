# Copyright 2014 The Android Open Source Project
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

TARGET_KERNEL_CONFIG := aosp_yoshino_poplar_defconfig

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/poplar/device.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := aosp_g8341
PRODUCT_DEVICE := poplar
PRODUCT_MODEL := Xperia XZ1 (AOSP)
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=G8341 \
    PRIVATE_BUILD_DESC="G8341-user 8.0.0 47.1.A.12.179 1909673090 release-keys"

BUILD_FINGERPRINT := "Sony/G8341/G8341:8.0.0/47.1.A.12.179/1909673090:user/release-keys"
