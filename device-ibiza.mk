PRODUCT_HARDWARE := ibiza
PRODUCT_PLATFORM := sm4350
TARGET_BOARD_PLATFORM := holi

PRODUCT_SHIPPING_API_LEVEL := 30
BOARD_SHIPPING_API_LEVEL := 30
PRODUCT_TARGET_VNDK_VERSION := 30

#$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_ramdisk.mk)

LOCAL_PATH := device/motorola/ibiza

PRODUCT_COPY_FILES := \
		      $(LOCAL_PATH)/fstab.hardware:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.$(PRODUCT_PLATFORM) \
		      $(LOCAL_PATH)/fstab.hardware:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.$(PRODUCT_PLATFORM)

AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
		     vendor_boot
