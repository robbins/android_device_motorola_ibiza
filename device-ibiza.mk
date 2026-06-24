LOCAL_PATH := device/motorola/ibiza

PRODUCT_SHIPPING_API_LEVEL := 30

# Prebuilt kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
PRODUCT_COPY_FILES += \
	$(TARGET_PREBUILT_KERNEL):kernel

PRODUCT_PLATFORM := qcom

# VINTF
## Device manifest (from vendor)
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/vintf/manifest.xml
## Device-specific system manifest
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(LOCAL_PATH)/vintf/compatibility_matrix.device.xml

# Soong namespaces QCOM display HAL
PRODUCT_SOONG_NAMESPACES += \
    hardware/qcom/display \
    hardware/qcom/display/gralloc

PRODUCT_PACKAGES += \
    vendor.qti.hardware.display.allocator-service \
    vendor.qti.hardware.display.composer-service \
    android.hardware.graphics.mapper@3.0-impl-qti-display \
    android.hardware.graphics.mapper@4.0-impl-qti-display \

SOONG_CONFIG_NAMESPACES += qtidisplay
SOONG_CONFIG_qtidisplay := headless default
SOONG_CONFIG_qtidisplay_default := true
SOONG_CONFIG_qtidisplay_headless := false

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl-qti \
    android.hardware.health@2.1-service

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service \
    android.hardware.power-impl

# A/B
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

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
        fastbootd

# Recovery init script
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/init/init.recovery.device.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.qcom.rc

# System init
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/init/init.hardware.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.qcom.rc

# Mount partitions early (first-stage-mount)
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/fstab.hardware:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.$(PRODUCT_PLATFORM)
