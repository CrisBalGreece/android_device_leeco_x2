# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2023 The DerpFestOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/leeco/x2/device.mk)

# Inherit some LegionOS common
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := LeEco
PRODUCT_DEVICE := x2
PRODUCT_MANUFACTURER := LeEco
PRODUCT_NAME := derp_x2

# DerpFestOS flags
DERP_BUILDTYPE := Official
TARGET_NOT_USES_BLUR := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_BOOTANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_GMS_CLIENTID_BASE := android-leeco

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=le_x2 \
    PRODUCT_NAME=LeMax2_WW \
    PRIVATE_BUILD_DESC="griffin-user 6.0.1 MCC24.246-37 42 release-keys"

BUILD_FINGERPRINT := motorola/griffin_retcn/griffin:6.0.1/MCC24.246-37/42:user/release-keys
