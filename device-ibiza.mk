PRODUCT_HARDWARE := ibiza
PRODUCT_PLATFORM := sm4350
TARGET_BOARD_PLATFORM := holi

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

# Init files
PRODUCT_COPY_FILES += \
        device/motorola/ibiza/rootdir/init.target.rc:$(TARGET_COPY_OUT_ROOT)/init.qcom.rc \
        device/motorola/ibiza/rootdir/init.target.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.qcom.rc \
	device/motorola/ibiza/rootdir/init.recovery.target.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.qcom.rc

PRODUCT_SYSTEM_PROPERTIES += sys.init_log_level=7

PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.dm_default_key.options_format.version=2

PRODUCT_COPY_FILES += \
	device/motorola/ibiza/rootdir/vendor/bin/hw/android.hardware.keymaster@4.0-service-qti:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.keymaster@4.0-service-qti \
	device/motorola/ibiza/rootdir/vendor/bin/hw/android.hardware.keymaster@4.1-service-qti:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.keymaster@4.1-service-qti \
	device/motorola/ibiza/rootdir/vendor/etc/init/android.hardware.keymaster@4.1-service-qti.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.keymaster@4.1-service-qti.rc \
	device/motorola/ibiza/rootdir/vendor/lib/libkeymasterdeviceutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libkeymasterdeviceutils.so \
	device/motorola/ibiza/rootdir/vendor/lib/libkeymasterprovision.so:$(TARGET_COPY_OUT_VENDOR)/lib/libkeymasterprovision.so \
	device/motorola/ibiza/rootdir/vendor/lib/libkeymasterutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libkeymasterutils.so \
	device/motorola/ibiza/rootdir/vendor/lib/libqtikeymaster4.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqtikeymaster4.so \
	device/motorola/ibiza/rootdir/vendor/lib64/libkeymasterdeviceutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterdeviceutils.so \
	device/motorola/ibiza/rootdir/vendor/lib64/libkeymasterprovision.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterprovision.so \
	device/motorola/ibiza/rootdir/vendor/lib64/libkeymasterutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterutils.so \
	device/motorola/ibiza/rootdir/vendor/lib64/libqtikeymaster4.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqtikeymaster4.so

	#device/motorola/ibiza/rootdir/system/bin/wait_for_keymaster:$(TARGET_COPY_OUT_SYSTEM)//bin/wait_for_keymaster \
	#device/motorola/ibiza/rootdir/system/etc/wait_for_keymaster.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/wait_for_keymaster.rc \
	#device/motorola/ibiza/rootdir/system/lib64/android.hardware.keymaster@3.0.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/android.hardware.keymaster@3.0.so \
	#device/motorola/ibiza/rootdir/system/lib64/android.hardware.keymaster@4.0.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/android.hardware.keymaster@4.0.so \
	#device/motorola/ibiza/rootdir/system/lib64/android.hardware.keymaster@4.1.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/android.hardware.keymaster@4.1.so \
	#device/motorola/ibiza/rootdir/system/lib64/lib_android_keymaster_keymint_utils.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/lib_android_keymaster_keymint_utils.so \
	#device/motorola/ibiza/rootdir/system/lib64/libkeymaster_messages.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libkeymaster_messages.so \
	#device/motorola/ibiza/rootdir/system/lib64/libkeymaster_portable.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libkeymaster_portable.so \
	#device/motorola/ibiza/rootdir/system/lib64/libpuresoftkeymasterdevice.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libpuresoftkeymasterdevice.so \
	#device/motorola/ibiza/rootdir/system/lib64/libkeymaster4_1support.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libkeymaster4_1support.so \
	#device/motorola/ibiza/rootdir/system/lib64/libkeymaster4support.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libkeymaster4support.so \

# vendor/oneplus/sm8150-common/proprietary/vendor/bin/hw/android.hardware.keymaster@4.1-service-qti:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.keymaster@4.1-service-qti

PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0 \
    android.hardware.gatekeeper@1.0.vendor \
    android.hardware.keymaster@4.1 \
    android.hardware.keymaster@4.1.vendor \
    android.hardware.keymaster@4.0 \
    android.hardware.keymaster@4.0.vendor \
    android.system.keystore2 \
    android.hardware.keymaster@4.0-impl \
    android.hardware.keymaster@4.0-service
