PRODUCT_PLATFORM := holi

# Must define for A/B target
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS := \
  boot \
  system \
  vendor \
  vendor_boot \
  dtbo \
  product \
  system_ext \
  vbmeta \
  vbmeta_system
PRODUCT_PACKAGES += \
  update_engine \
  update_verifier

# Strongly recommended for A/B target
TARGET_NO_RECOVERY := true
BOARD_USES_RECOVERY_AS_BOOT := true

# Debug
PRODUCT_PACKAGES_DEBUG += update_engine_client

# Prebuilt kernel
TARGET_PREBUILT_KERNEL := device/motorola/ibiza/kernel
PRODUCT_COPY_FILES += \
	$(TARGET_PREBUILT_KERNEL):kernel \
	device/motorola/ibiza/fstab.hardware:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.qcom \
	device/motorola/ibiza/fstab.hardware:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.qcom \
	device/motorola/ibiza/init.hardware.rc:$(TARGET_COPY_OUT_ROOT)/init.qcom.rc \
	device/motorola/ibiza/init.hardware.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.qcom.rc

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl \
    android.hardware.boot@1.1-service
