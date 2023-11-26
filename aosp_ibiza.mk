# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := aosp_ibiza
PRODUCT_DEVICE := ibiza
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto g50
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RESTRICT_VENDOR_FILES := true

$(call inherit-product, device/motorola/ibiza/device-ibiza.mk)
