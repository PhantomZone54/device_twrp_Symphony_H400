#
# Copyright (C) 2018 The Android Open-Source Project
#                    The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_COPY_FILES += device/Symphony/H400/prebuilt/zImage:kernel

PRODUCT_DEVICE := H400
PRODUCT_NAME := omni_H400
PRODUCT_BRAND := Symphony
PRODUCT_MODEL := H400
PRODUCT_MANUFACTURER := Symphony

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/etc/recovery.fstab:root/etc/recovery.fstab \
    $(LOCAL_PATH)/recovery/root/sbin/permissive.sh:root/sbin/permissive.sh \
    $(LOCAL_PATH)/recovery/root/factory_init.project.rc:root/factory_init.project.rc \
    $(LOCAL_PATH)/recovery/root/factory_init.rc:root/factory_init.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
    $(LOCAL_PATH)/recovery/root/meta_init.modem.rc:root/meta_init.modem.rc \
    $(LOCAL_PATH)/recovery/root/meta_init.project.rc:root/meta_init.project.rc \
    $(LOCAL_PATH)/recovery/root/meta_init.rc:root/meta_init.rc \
    $(LOCAL_PATH)/recovery/root/ueventd.mt6735.rc:root/ueventd.mt6735.rc
