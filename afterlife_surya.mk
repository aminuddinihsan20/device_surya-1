#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from surya device.
$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common Afterlife stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Device identifier.
PRODUCT_NAME := afterlife_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_ENABLE_BLUR := true

#Maintainer
AFTERLIFE_MAINTAINER := Inuo20

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# CoreGapps
AFTERLIFE_GAPPS := true
AFTERLIFE_CORE := true

# AfterLify
AFTERLIFE_BUILD_TYPE := UNOFFICIAL

# Pixel Charging
USE_PIXEL_CHARGING := true