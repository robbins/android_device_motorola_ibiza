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

PRODUCT_COPY_FILES += \
	device/motorola/ibiza/rootdir/vendor/ueventd.rc:$(TARGET_COPY_OUT_VENDOR)/ueventd.rc

# PRODUCT_SYSTEM_PROPERTIES += sys.init_log_level=7

#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.crypto.dm_default_key.options_format.version=2

PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1 \
    android.hardware.keymaster@4.1.vendor \
    android.hardware.keymaster@4.1-impl \
    android.hardware.keymaster@4.1-service \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0 \
    android.hardware.gatekeeper@1.0.vendor \
    libstagefrighthw
    #android.hardware.gatekeeper@1.0-impl \

PRODUCT_COPY_FILES += \
    device/motorola/ibiza/rootdir/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so \
    device/motorola/ibiza/rootdir/vendor/bin/qseecomd:$(TARGET_COPY_OUT_VENDOR)/bin/qseecomd \
    device/motorola/ibiza/rootdir/vendor/lib/libkeymasterdeviceutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libkeymasterdeviceutils.so \
    device/motorola/ibiza/rootdir/vendor/lib/libkeymasterprovision.so:$(TARGET_COPY_OUT_VENDOR)/lib/libkeymasterprovision.so \
    device/motorola/ibiza/rootdir/vendor/lib/libkeymasterutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libkeymasterutils.so \
    device/motorola/ibiza/rootdir/vendor/lib/libqtikeymaster4.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqtikeymaster4.so \
    device/motorola/ibiza/rootdir/vendor/lib/libqcbor.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqcbor.so \
    device/motorola/ibiza/rootdir/vendor/lib/libQSEEComAPI.so:$(TARGET_COPY_OUT_VENDOR)/lib/libQSEEComAPI.so \
    device/motorola/ibiza/rootdir/vendor/lib/vendor.qti.hardware.qteeconnector@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.qti.hardware.qteeconnector@1.0.so \
    device/motorola/ibiza/rootdir/vendor/lib64/libkeymasterdeviceutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterdeviceutils.so \
    device/motorola/ibiza/rootdir/vendor/lib64/libkeymasterprovision.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterprovision.so \
    device/motorola/ibiza/rootdir/vendor/lib64/libkeymasterutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterutils.so \
    device/motorola/ibiza/rootdir/vendor/lib64/libqtikeymaster4.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqtikeymaster4.so \
    device/motorola/ibiza/rootdir/vendor/lib64/libqcbor.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcbor.so \
    device/motorola/ibiza/rootdir/vendor/lib64/libQSEEComAPI.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libQSEEComAPI.so \
    device/motorola/ibiza/rootdir/vendor/lib64/vendor.qti.hardware.qteeconnector@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.qti.hardware.qteeconnector@1.0.so


#PRODUCT_PACKAGES += \
#    android.hardware.keymaster@4.1 \
#    android.hardware.keymaster@4.1.vendor \
#    android.hardware.keymaster@4.0 \
#    android.hardware.keymaster@4.0.vendor \
#    android.hardware.boot@1.1-service \
#    android.hardware.boot@1.1-impl \
#    android.system.keystore2 \
#    android.hardware.keymaster@4.1-impl \
#    android.hardware.keymaster@4.1-service \
#    android.hardware.keymaster@4.0-impl \
#    android.hardware.keymaster@4.0-service \
#    android.hardware.gatekeeper@1.0-impl \
#    android.hardware.gatekeeper@1.0-service \
#    android.hardware.gatekeeper@1.0 \
#    android.hardware.gatekeeper@1.0.vendor
