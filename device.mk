#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2012 The Carbon Project
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

# device
LOCAL_PATH := device/samsung/i605

# overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# include
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.smdk4x12:root/fstab.smdk4x12

# packages
PRODUCT_PACKAGES += \
    VZWAPNLib \
    vzwapnpermission \
    VZWAPNService

# permissions
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/configs/vzwapnlib.xml:system/etc/permissions/vzwapnlib.xml \
        $(LOCAL_PATH)/configs/com.verizon.hardware.telephony.xml:system/etc/permissions/com.verizon.hardware.telephony.xml

# common
$(call inherit-product, device/samsung/t0ltecdma/t0ltecdma.mk)

# vendor
$(call inherit-product-if-exists, vendor/samsung/i605/i605-vendor.mk)
