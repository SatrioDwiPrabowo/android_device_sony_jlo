# Copyright (C) 2011 The Android Open Source Project
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


 
# Torch
PRODUCT_PACKAGES := \
    Torch

# QCOM Display
PRODUCT_PACKAGES += \
    memtrack.msm7x27a

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Charging animation resources
$(call inherit-product, device/sony/tamsui-common/prebuilt/resources-hdpi.mk)

# Inherit from jlo device
$(call inherit-product, device/sony/jlo/jlo.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_jlo
PRODUCT_DEVICE := jlo
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia J
