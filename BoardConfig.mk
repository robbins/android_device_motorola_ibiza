LOCAL_PATH := device/motorola/ibiza

TARGET_BOOTLOADER_BOARD_NAME = ibiza
PRODUCT_PLATFORM := qcom

# Identify CPU architecture & ABI
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

# A/B updates
TARGET_NO_RECOVERY := true
BOARD_USES_RECOVERY_AS_BOOT := true

# QCOM Display HAL
TARGET_IS_HEADLESS := false

# QCOM Power HAL (and maybe others)
TARGET_BOARD_PLATFORM := holi
QCOM_BOARD_PLATFORMS += holi

# Dynamic partitions
BOARD_SUPER_PARTITION_SIZE := 12884901888
BOARD_SUPER_PARTITION_GROUPS := motorola_dynamic_partitions
BOARD_MOTOROLA_DYNAMIC_PARTITIONS_SIZE := 6438256640
BOARD_MOTOROLA_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product system_ext
BOARD_KERNEL_CMDLINE += androidboot.boot_devices=soc/4804000.ufshc

# Device Tree Blob
BOARD_USES_DT := true
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_PREBUILT_DTBIMAGE_DIR := $(LOCAL_PATH)/prebuilt/
BOARD_PREBUILT_DTBOIMAGE := $(BOARD_PREBUILT_DTBIMAGE_DIR)/dtbo.img

# Partitions
TARGET_COPY_OUT_SYSTEM := system
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_PRODUCT := product
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# Boot & vendor boot partitions
BOARD_BOOT_HEADER_VERSION := 3
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_DTB_OFFSET := 0x01f00000
BOARD_MKBOOTIMG_ARGS := --base $(BOARD_KERNEL_BASE) \
                        --pagesize $(BOARD_KERNEL_PAGESIZE) \
                        --kernel_offset $(BOARD_KERNEL_OFFSET) \
                        --ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
                        --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) \
                        --header_version $(BOARD_BOOT_HEADER_VERSION) \
                        --dtb $(BOARD_PREBUILT_DTBIMAGE_DIR)/dtb \
                        --dtb_offset $(BOARD_DTB_OFFSET)

# Fstab
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/fstab.hardware:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.$(PRODUCT_PLATFORM)

# SELinux
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# Serial console
BOARD_KERNEL_CMDLINE += androidboot.console=ttyMSM0,115200n8

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# Init script
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom

# USB
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=4e00000.dwc3

# Debugging
BOARD_KERNEL_CMDLINE += printk.devkmsg=on androidboot.init_fatal_panic=true printk.always_kmsg_dump=1 androidboot.init_fatal_reboot_target=recovery

# Userdata Partition
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
