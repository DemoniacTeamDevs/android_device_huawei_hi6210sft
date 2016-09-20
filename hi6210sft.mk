# AAPT
PRODUCT_AAPT_CONFIG := xhdpi hdpi normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Dalvik
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# File System
PRODUCT_PACKAGES += \
    	make_ext4fs \
	setup_fs

# GPS
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Graphics
PRODUCT_PACKAGES += \
	gralloc.hi6210sft \
	libGLES_android \
	libGLES_mali \
	libion

PRODUCT_PROPERTY_OVERRIDES += \
    	debug.hwui.render_dirty_regions=false \
 	hw.lcd.lcd_density=320 \
	persist.sys.strictmode.disable=1 \
    	persist.sys.use_dithering=2 \
    	ro.opengles.version=131072 \
	ro.sf.lcd_density=320

# Lights
PRODUCT_PACKAGES += \
	lights.default

# Overlay
DEVICE_PACKAGE_OVERLAYS := device/huawei/hi6210sft/overlay

# Ramdisk
PRODUCT_COPY_FILES+= \
        $(LOCAL_PATH)/ramdisk/fstab.hi6210sft:root/fstab.hi6210sft \
        $(LOCAL_PATH)/ramdisk/init:root/init \
        $(LOCAL_PATH)/ramdisk/init.5801.rc:root/init.5801.rc \
        $(LOCAL_PATH)/ramdisk/init.6165.rc:root/init.6165.rc \
        $(LOCAL_PATH)/ramdisk/init.10106.rc:root/init.10106.rc \
        $(LOCAL_PATH)/ramdisk/init.51054.rc:root/init.51054.rc \
        $(LOCAL_PATH)/ramdisk/init.102173.rc:root/init.102173.rc \
        $(LOCAL_PATH)/ramdisk/init.142782.rc:root/init.142782.rc \
        $(LOCAL_PATH)/ramdisk/init.audio.rc:root/init.audio.rc \
        $(LOCAL_PATH)/ramdisk/init.chip.usb.rc:root/init.chip.usb.rc \
        $(LOCAL_PATH)/ramdisk/init.connectivity.bcm43xx.rc:root/init.connectivity.bcm43xx.rc \
        $(LOCAL_PATH)/ramdisk/init.connectivity.hi110x.rc:root/init.connectivity.hi110x.rc \
        $(LOCAL_PATH)/ramdisk/init.connectivity.rc:root/init.connectivity.rc \
        $(LOCAL_PATH)/ramdisk/init.device.rc:root/init.device.rc \
        $(LOCAL_PATH)/ramdisk/init.extmodem.rc:root/init.extmodem.rc \
        $(LOCAL_PATH)/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
        $(LOCAL_PATH)/ramdisk/init.hisi.rc:root/init.hisi.rc \
        $(LOCAL_PATH)/ramdisk/init.manufacture.rc:root/init.manufacture.rc \
        $(LOCAL_PATH)/ramdisk/init.performance.rc:root/init.performance.rc \
        $(LOCAL_PATH)/ramdisk/init.platform.rc:root/init.platform.rc \
        $(LOCAL_PATH)/ramdisk/init.protocol.rc:root/init.protocol.rc \
        $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
        $(LOCAL_PATH)/ramdisk/init.recovery.hi110x.rc:root/init.recovery.hi110x.rc \
        $(LOCAL_PATH)/ramdisk/init.recovery.hi6210sft.rc:root/init.recovery.hi6210sft.rc \
        $(LOCAL_PATH)/ramdisk/init.tee.rc:root/init.tee.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.5801.rc:root/ueventd.5801.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.6165.rc:root/ueventd.6165.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.10106.rc:root/ueventd.10106.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.51054.rc:root/ueventd.51054.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.102173.rc:root/ueventd.102173.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.142782.rc:root/ueventd.142782.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc \

PRODUCT_COPY_FILES+= \
        $(LOCAL_PATH)/ramdisk/sbin/check_root:root/check_root \
        $(LOCAL_PATH)/ramdisk/sbin/e2fsck_s:root/e2fsck_s \
        $(LOCAL_PATH)/ramdisk/sbin/emmc_partation:root/emmc_partation \
        $(LOCAL_PATH)/ramdisk/sbin/kmsgcat:root/kmsgcat \
        $(LOCAL_PATH)/ramdisk/sbin/logctl_service:root/logctl_service \
        $(LOCAL_PATH)/ramdisk/sbin/ntfs-3gd:root/ntfs-3gd \
        $(LOCAL_PATH)/ramdisk/sbin/oeminfo_nvm_server:root/oeminfo_nvm_server \
        $(LOCAL_PATH)/ramdisk/sbin/teecd:root/teecd \

# USB
PRODUCT_PACKAGES += \
 	com.android.future.usb.accessory

# Wifi
PRODUCT_PACKAGES += \
	wpa_supplicant

# Zygote
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.zygote=zygote64_32

PRODUCT_COPY_FILES += \
	system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.zygote=zygote64_32
