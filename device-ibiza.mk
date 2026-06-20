LOCAL_PATH := device/motorola/ibiza

PRODUCT_SHIPPING_API_LEVEL := 30

# Prebuilt kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
PRODUCT_COPY_FILES += \
	$(TARGET_PREBUILT_KERNEL):kernel
