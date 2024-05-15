PRODUCT_PLATFORM := holi

# Must define for A/B target
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS := \
  boot \
  system \
  vendor \
  vendor_boot
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
	device/motorola/ibiza/fstab.hardware:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.$(PRODUCT_PLATFORM)
