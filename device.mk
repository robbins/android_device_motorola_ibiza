LOCAL_PATH := device/motorola/ibiza

# Enable virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_PLATFORM := sm4350

PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd \
    qcom_decrypt \
    qcom_decrypt_fbe \
    android.hardware.boot@1.1-impl-qti.recovery \
    bootctrl.recovery

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    product \
    system \
    system_ext \
    vendor \
    vendor_boot \
    vbmeta \
    vbmeta_system

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# TWRP
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1600

PRODUCT_SHIPPING_API_LEVEL := 30

PRODUCT_TARGET_VNDK_VERSION := 30


PRODUCT_COPY_FILES := \
		      $(LOCAL_PATH)/fstab.hardware:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.$(PRODUCT_PLATFORM) \
		      $(LOCAL_PATH)/fstab.hardware:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.$(PRODUCT_PLATFORM)
