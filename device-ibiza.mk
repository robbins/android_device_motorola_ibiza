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
PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.dm_default_key.options_format.version=2

# Health (didnt start yet)
PRODUCT_PACKAGES += android.hardware.health@2.1-service

# Keymaster
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/prebuilt/android.hardware.keymaster@4.1-service-qti:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.keymaster@4.1-service-qti

# Gatekeeper
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/android.hardware.gatekeeper@1.0-service-qti:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.gatekeeper@1.0-service-qti \
	$(LOCAL_PATH)/prebuilt/android.hardware.gatekeeper@1.0-impl-qti.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so \
	$(LOCAL_PATH)/prebuilt/libkeymasterdeviceutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterdeviceutils.so \
	$(LOCAL_PATH)/prebuilt/libqcbor.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcbor.so \
	$(LOCAL_PATH)/prebuilt/libQSEEComAPI.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libQSEEComAPI.so

# Boot (didnt start yet)
PRODUCT_PACKAGES += android.hardware.boot@1.1-service
PRODUCT_PACKAGES += android.hardware.boot@1.1-impl
