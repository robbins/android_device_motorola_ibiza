LOCAL_PATH := device/motorola/ibiza

PRODUCT_PLATFORM := qcom

# Use the A/B updater
AB_OTA_UPDATER := true
PRODUCT_PACKAGES += \
  update_engine \
  update_verifier
# Debug builds
PRODUCT_PACKAGES_DEBUG += update_engine_client

# A/B updatable partitions
AB_OTA_PARTITIONS := \
  boot \
  vendor_boot \
  system \
  vendor \
  system_ext \
  product \
  dtbo \
  vbmeta \
  vbmeta_system

# Prebuilt kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
PRODUCT_COPY_FILES += \
	$(TARGET_PREBUILT_KERNEL):kernel

# Vendor boot
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/fstab.hardware:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.$(PRODUCT_PLATFORM)

# Mount partitions early (first-stage-mount)
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/fstab.hardware:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.$(PRODUCT_PLATFORM)

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
	fastbootd

# USB in recovery and fixing fail to open error using bootdevice symlink
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/conf/init.recovery.device.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.qcom.rc

# Init
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/conf/init.hardware.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.qcom.rc

# Metadata encryotion
PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.dm_default_key.options_format.version=2

# Health (didnt start yet)
PRODUCT_PACKAGES += android.hardware.health@2.1-service
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/prebuilt/android.hardware.health@2.0-impl-2.1-qti.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/android.hardware.health@2.0-impl-2.1-qti.so

# Keymaster
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/prebuilt/android.hardware.keymaster@4.1-service-qti:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.keymaster@4.1-service-qti \
        $(LOCAL_PATH)/prebuilt/libqtikeymaster4.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqtikeymaster4.so \
        $(LOCAL_PATH)/prebuilt/libkeymasterutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterutils.so \
        $(LOCAL_PATH)/prebuilt/libdrm.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdrm.so \
        $(LOCAL_PATH)/prebuilt/libdrmfs.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdrmfs.so \
        $(LOCAL_PATH)/prebuilt/libdrmtime.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdrmtime.so \
        $(LOCAL_PATH)/prebuilt/librpmb.so:$(TARGET_COPY_OUT_VENDOR)/lib64/librpmb.so \
        $(LOCAL_PATH)/prebuilt/libqisl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqisl.so \
        $(LOCAL_PATH)/prebuilt/libops.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libops.so \
        $(LOCAL_PATH)/prebuilt/libssd.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libssd.so \
        $(LOCAL_PATH)/prebuilt/libtime_genoff.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libtime_genoff.so \
        $(LOCAL_PATH)/prebuilt/libGPreqcancel.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libGPreqcancel.so \
        $(LOCAL_PATH)/prebuilt/libGPreqcancel_svc.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libGPreqcancel_svc.so \
        $(LOCAL_PATH)/prebuilt/libdiag.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdiag.so

# Gatekeeper
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/android.hardware.gatekeeper@1.0-service-qti:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.gatekeeper@1.0-service-qti \
	$(LOCAL_PATH)/prebuilt/android.hardware.gatekeeper@1.0-impl-qti.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so \
	$(LOCAL_PATH)/prebuilt/libkeymasterdeviceutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterdeviceutils.so \
	$(LOCAL_PATH)/prebuilt/libqcbor.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqcbor.so \
	$(LOCAL_PATH)/prebuilt/libQSEEComAPI.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libQSEEComAPI.so

# Unknown
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/qseecomd:$(TARGET_COPY_OUT_VENDOR)/bin/qseecomd \
	$(LOCAL_PATH)/prebuilt/ueventd.rc:$(TARGET_COPY_OUT_VENDOR)/etc/ueventd.rc \
	$(LOCAL_PATH)/prebuilt/libdisplayconfig.qti.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdisplayconfig.qti.so \
	$(LOCAL_PATH)/prebuilt/vendor.display.config@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.display.config@2.0.so

# Qseecomd

# Boot (didnt start yet)
PRODUCT_PACKAGES += android.hardware.boot@1.1-service
PRODUCT_PACKAGES += android.hardware.boot@1.1-impl

# Audio
#$(LOCAL_PATH)/conf/android.hardware.audio.service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.audio.service.rc
#$(LOCAL_PATH)/prebuilt/android.hardware.audio.service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.audio.service
#PRODUCT_COPY_FILES += \
#	$(LOCAL_PATH)/prebuilt/32/android.hardware.audio@6.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/android.hardware.audio@6.0-impl.so \
#	$(LOCAL_PATH)/prebuilt/64/android.hardware.audio@6.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/android.hardware.audio@6.0-impl.so
#

PRODUCT_PACKAGES += android.hardware.audio.service
PRODUCT_PACKAGES += android.hardware.audio@6.0-impl
PRODUCT_PACKAGES += android.hardware.audio.effect@6.0-impl
PRODUCT_PACKAGES += android.hardware.audio.effect@6.0-util
PRODUCT_PACKAGES += android.hardware.audio.common-util

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/32/libEGL_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libEGL_adreno.so \
	$(LOCAL_PATH)/prebuilt/64/libEGL_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib64/egl/libEGL_adreno.so \
	$(LOCAL_PATH)/prebuilt/32/libGLESv1_CM_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libGLESv1_CM_adreno.so \
	$(LOCAL_PATH)/prebuilt/64/libGLESv1_CM_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib64/egl/libGLESv1_CM_adreno.so \
	$(LOCAL_PATH)/prebuilt/32/libGLESv2_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libGLESv2_adreno.so \
	$(LOCAL_PATH)/prebuilt/64/libGLESv2_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib64/egl/libGLESv2_adreno.so \
	$(LOCAL_PATH)/prebuilt/32/libadreno_utils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libadreno_utils.so \
	$(LOCAL_PATH)/prebuilt/64/libadreno_utils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libadreno_utils.so \
	$(LOCAL_PATH)/prebuilt/32/libgsl.so:$(TARGET_COPY_OUT_VENDOR)/lib/libgsl.so \
	$(LOCAL_PATH)/prebuilt/64/libgsl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libgsl.so \
	$(LOCAL_PATH)/prebuilt/32/libllvm-glnext.so:$(TARGET_COPY_OUT_VENDOR)/lib/libllvm-glnext.so \
	$(LOCAL_PATH)/prebuilt/64/libllvm-glnext.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libllvm-glnext.so
