LOCAL_PATH := device/motorola/ibiza

# Identify CPU architecture & ABI
# Multi-lib, 32-bit and 64-bit
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := kryo

# Provide VINTF vendor manifest
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/manifest.xml

# A/B
TARGET_NO_RECOVERY := true
BOARD_USES_RECOVERY_AS_BOOT := true
