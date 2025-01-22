LOCAL_PATH := device/motorola/ibiza

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
  system \
  vendor \
  system_ext \
  product \
  dtbo \
  vbmeta \
  vbmeta_system

# Prebuilt kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

PRODUCT_COPY_FILES := \
	$(TARGET_PREBUILT_KERNEL):kernel

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
