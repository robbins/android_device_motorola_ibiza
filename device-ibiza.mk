LOCAL_PATH := device/motorola/ibiza

PRODUCT_PLATFORM := qcom

# Use the A/B updater
AB_OTA_UPDATER := true
PRODUCT_PACKAGES += \
  update_engine \
  update_verifier
# Debug builds
PRODUCT_PACKAGES_DEBUG += update_engine_client

# A/B updatable partitions
AB_OTA_PARTITIONS := \
  boot \
  vendor_boot \
  system \
  vendor \
  system_ext \
  product \
  dtbo \
  vbmeta \
  vbmeta_system

# Prebuilt kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
PRODUCT_COPY_FILES += \
	$(TARGET_PREBUILT_KERNEL):kernel

# Vendor boot
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/fstab.hardware:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.$(PRODUCT_PLATFORM)

# Mount partitions early (first-stage-mount)
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/fstab.hardware:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.$(PRODUCT_PLATFORM)

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
	fastbootd

# USB in recovery and fixing fail to open error using bootdevice symlink
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/conf/init.recovery.device.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.qcom.rc

# Init
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/conf/init.hardware.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.qcom.rc

# Metadata encryotion
PRODUCT_SHIPPING_API_LEVEL := 30
