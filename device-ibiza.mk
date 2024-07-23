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

PRODUCT_PACKAGES += fastbootd

# Gatekeeper
# Install interface library to vendor partition
PRODUCT_PACKAGES += android.hardware.gatekeeper@1.0.vendor
PRODUCT_PACKAGES += android.hardware.gatekeeper@1.0
# Install Qualcomm Gatekeeper Service & rc file
PRODUCT_COPY_FILES += \
    device/motorola/ibiza/vendor/bin/hw/android.hardware.gatekeeper@1.0-service-qti:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.gatekeeper@1.0-service-qti \
    device/motorola/ibiza/vendor/etc/init/android.hardware.gatekeeper@1.0-service-qti.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.gatekeeper@1.0-service-qti.rc
# Install Qualcomm Gatekeeper Implementation
PRODUCT_COPY_FILES += \
    device/motorola/ibiza/vendor/lib/hw/android.hardware.gatekeeper@1.0-impl-qti.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/android.hardware.gatekeeper@1.0-impl-qti.so \
    device/motorola/ibiza/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so

# Keymaster
# Install interface library to vendor partition
PRODUCT_PACKAGES += android.hardware.keymaster@4.1.vendor
PRODUCT_PACKAGES += android.hardware.keymaster@4.0.vendor
PRODUCT_PACKAGES += android.hardware.keymaster@4.1
PRODUCT_PACKAGES += android.hardware.keymaster@4.0
# Install Service, rc, Implementation
PRODUCT_COPY_FILES += \
    device/motorola/ibiza/vendor/bin/hw/android.hardware.keymaster@4.0-service-qti:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.keymaster@4.0-service-qti \
    device/motorola/ibiza/vendor/bin/hw/android.hardware.keymaster@4.1-service-qti:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.keymaster@4.1-service-qti \
    device/motorola/ibiza/vendor/etc/init/android.hardware.keymaster@4.1-service-qti.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.keymaster@4.1-service-qti.rc \
    device/motorola/ibiza/vendor/lib/libkeymasterdeviceutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libkeymasterdeviceutils.so \
    device/motorola/ibiza/vendor/lib/libkeymasterprovision.so:$(TARGET_COPY_OUT_VENDOR)/lib/libkeymasterprovision.so \
    device/motorola/ibiza/vendor/lib/libkeymasterutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libkeymasterutils.so \
    device/motorola/ibiza/vendor/lib/libqtikeymaster4.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqtikeymaster4.so \
    device/motorola/ibiza/vendor/lib64/libkeymasterdeviceutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterdeviceutils.so \
    device/motorola/ibiza/vendor/lib64/libkeymasterprovision.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterprovision.so \
    device/motorola/ibiza/vendor/lib64/libkeymasterutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterutils.so \
    device/motorola/ibiza/vendor/lib64/libqcbor.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcbor.so \
    device/motorola/ibiza/vendor/lib64/libqtikeymaster4.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqtikeymaster4.so

# Libs for keymaster/gatekeeper
PRODUCT_COPY_FILES += \
    device/motorola/ibiza/vendor/lib/libQSEEComAPI.so:$(TARGET_COPY_OUT_VENDOR)/lib/libQSEEComAPI.so \
    device/motorola/ibiza/vendor/lib64/libQSEEComAPI.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libQSEEComAPI.so

# QTI USB HAL
PRODUCT_COPY_FILES += \
    device/motorola/ibiza/vendor/bin/hw/android.hardware.usb@1.2-service-qti:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.usb@1.2-service-qti \
    device/motorola/ibiza/vendor/etc/init/android.hardware.usb@1.2-service-qti.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.usb@1.2-service-qti.rc
PRODUCT_PACKAGES += android.hardware.usb@1.2.vendor
PRODUCT_PACKAGES += android.hardware.usb@1.2
