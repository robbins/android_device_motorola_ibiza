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
	device/motorola/ibiza/init.hardware.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.qcom.rc \
	device/motorola/ibiza/init.recovery.hardware.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.qcom.rc

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl \
    android.hardware.boot@1.1-service

TARGET_RECOVERY_FSTAB := device/motorola/ibiza/fstab.hardware

# Keymaster HIDL Interface Library
PRODUCT_PACKAGES += android.hardware.keymaster@4.1.vendor

# Keymaster Service
# Files installed by hardware/interfaces/keymaster/4.1 in AOSP
PRODUCT_COPY_FILES += \
    device/motorola/ibiza/rootdir/vendor/bin/hw/android.hardware.keymaster@4.1-service-qti:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.keymaster@4.1-service-qti \
    device/motorola/ibiza/rootdir/vendor/etc/init/android.hardware.keymaster@4.1-service-qti.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.keymaster@4.1-service-qti.rc \
    device/motorola/ibiza/rootdir/vendor/lib64/libqtikeymaster4.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqtikeymaster4.so

# Files installed in TWRP tree
PRODUCT_COPY_FILES += \
    device/motorola/ibiza/rootdir/vendor/lib64/libkeymasterutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterutils.so \
    device/motorola/ibiza/rootdir/vendor/lib64/libkeymasterdeviceutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterdeviceutils.so \
    device/motorola/ibiza/rootdir/vendor/lib64/libkeymasterprovision.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterprovision.so

# 32-bit
PRODUCT_COPY_FILES += \
    device/motorola/ibiza/rootdir/vendor/lib/libqtikeymaster4.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqtikeymaster4.so \
    device/motorola/ibiza/rootdir/vendor/lib/libkeymasterutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libkeymasterutils.so \
    device/motorola/ibiza/rootdir/vendor/lib/libkeymasterdeviceutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libkeymasterdeviceutils.so \
    device/motorola/ibiza/rootdir/vendor/lib/libkeymasterprovision.so:$(TARGET_COPY_OUT_VENDOR)/lib/libkeymasterprovision.so

PRODUCT_PACKAGES += android.system.keystore2

# Gatekeeper HIDL Interface Library
PRODUCT_PACKAGES += android.hardware.gatekeeper@1.0.vendor

PRODUCT_COPY_FILES += \
    device/motorola/ibiza/rootdir/vendor/bin/hw/android.hardware.gatekeeper@1.0-service-qti:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.gatekeeper@1.0-service-qti \
    device/motorola/ibiza/rootdir/vendor/etc/init/android.hardware.gatekeeper@1.0-service-qti.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.gatekeeper@1.0-service-qti.rc \
    device/motorola/ibiza/rootdir/vendor/lib/hw/android.hardware.gatekeeper@1.0-impl-qti.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/android.hardware.gatekeeper@1.0-impl-qti.so \
    device/motorola/ibiza/rootdir/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so

PRODUCT_COPY_FILES += \
    device/motorola/ibiza/rootdir/vendor/bin/qseecomd:$(TARGET_COPY_OUT_VENDOR)/bin/qseecomd \
    device/motorola/ibiza/rootdir/vendor/ueventd.rc:$(TARGET_COPY_OUT_VENDOR)/ueventd.rc \
    device/motorola/ibiza/rootdir/vendor/lib64/libqcbor.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcbor.so \
    device/motorola/ibiza/rootdir/vendor/lib/libqcbor.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqcbor.so \
    device/motorola/ibiza/rootdir/vendor/lib64/libQSEEComAPI.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libQSEEComAPI.so \
    device/motorola/ibiza/rootdir/vendor/lib/libQSEEComAPI.so:$(TARGET_COPY_OUT_VENDOR)/lib/libQSEEComAPI.so \
    device/motorola/ibiza/rootdir/vendor/lib64/librpmb.so:$(TARGET_COPY_OUT_VENDOR)/lib64/librpmb.so \
    device/motorola/ibiza/rootdir/vendor/lib/librpmb.so:$(TARGET_COPY_OUT_VENDOR)/lib/librpmb.so \
    device/motorola/ibiza/rootdir/vendor/lib64/libssd.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libssd.so \
    device/motorola/ibiza/rootdir/vendor/lib/libssd.so:$(TARGET_COPY_OUT_VENDOR)/lib/libssd.so

PRODUCT_PACKAGES += fastbootd
