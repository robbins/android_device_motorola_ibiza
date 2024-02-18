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

PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1 \
    android.hardware.keymaster@4.1.vendor \
    android.hardware.keymaster@4.1-impl \
    android.hardware.keymaster@4.1-service \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0 \
    android.hardware.gatekeeper@1.0.vendor

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
