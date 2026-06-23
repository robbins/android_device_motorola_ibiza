LOCAL_PATH := device/motorola/ibiza

PRODUCT_SHIPPING_API_LEVEL := 30

# Prebuilt kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
PRODUCT_COPY_FILES += \
	$(TARGET_PREBUILT_KERNEL):kernel

# VINTF
## Device manifest (from vendor)
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/vintf/manifest.xml

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

PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl-qti \
    android.hardware.health@2.1-service

PRODUCT_PACKAGES += \
    android.hardware.power-service \
    android.hardware.power-impl
