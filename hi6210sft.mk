# Android Open Source Projects
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_NAME := cm_hi6210sft
PRODUCT_DEVICE := hi6210sft
PRODUCT_BRAND := hi6210sft

# ADB
PRODUCT_PROPERTY_OVERRIDES += \
         debug.sf.no_hw_vsync=1 \
	 	 ro.adb.secure=0 \
         ro.secure=0

# AAPT
PRODUCT_AAPT_CONFIG := xhdpi hdpi normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# ART
PRODUCT_RUNTIMES := runtime_libart_default

# Audio
PRODUCT_COPY_FILES += \
        device/huawei/hi6210sft/rootdir/etc/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_PACKAGES += \
	    audio.a2dp.default \
		audio.primary.hi6210sft \
	    audio.r_submix.default \
	    audio.usb.default \
	    tinyplay

# Charac
PRODUCT_CHARACTERISTICS := default

# Charger
PRODUCT_PACKAGES += \
    	charger_res_images

# Dalvik
$(call inherit-product-if-exists, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

# GPS
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Graphics
PRODUCT_PACKAGES += \
		gralloc.hi6210sft \
		libGLES_android \
		libGLES_mali \
		libion

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/graphics/lib/egl/libGLES_mali.so:system/lib/egl/libGLES_mali.so \
        $(LOCAL_PATH)/graphics/lib64/egl/libGLES_mali.so:system/lib64/egl/libGLES_mali.so \

PRODUCT_PROPERTY_OVERRIDES += \
    	debug.hwui.render_dirty_regions=false \
 		hw.lcd.lcd_density=320 \
		persist.sys.strictmode.disable=1 \
    	persist.sys.use_dithering=2 \
    	ro.opengles.version=131072 \
		ro.sf.lcd_density=320

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/huawei/hi6210sft/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    	$(LOCAL_KERNEL):kernel

# OpenSSH
PRODUCT_PACKAGES += \
		scp \
		sftp \
		ssh \
		sshd \
		ssh-keygen \
		sshd_config \
		start-ssh \
		uim

# Overlays
DEVICE_PACKAGE_OVERLAYS := device/huawei/hi6210sft/overlay

# Permissions
PRODUCT_COPY_FILES +=  \
        device/huawei/hi6210sft/rootdir/etc/permissions/android.hardware.screen.xml:system/etc/permissions/android.hardware.screen.xml \
        frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
        frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
        frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
        frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
        frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
        frameworks/native/data/etc/android.software.backup.xml:system/etc/permissions/android.software.backup.xml \

# PowerHAL
PRODUCT_PACKAGES += power.hi6210sft

# Ramdisk
PRODUCT_COPY_FILES +=  \
        $(LOCAL_PATH)/ramdisk/fstab.hi6210sft:root/fstab.hi6210sft \
        $(LOCAL_PATH)/ramdisk/init:root/init \
        $(LOCAL_PATH)/ramdisk/init.5801.rc:root/init.5801.rc \
        $(LOCAL_PATH)/ramdisk/init.6166.rc:root/init.6166.rc \
        $(LOCAL_PATH)/ramdisk/init.10107.rc:root/init.10107.rc \
        $(LOCAL_PATH)/ramdisk/init.51055.rc:root/init.51055.rc \
        $(LOCAL_PATH)/ramdisk/init.61122.rc:root/init.61122.rc \
        $(LOCAL_PATH)/ramdisk/init.102174.rc:root/init.102174.rc \
        $(LOCAL_PATH)/ramdisk/init.142783.rc:root/init.142783.rc \
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
        $(LOCAL_PATH)/ramdisk/init.post-fs-data.rc:root/init.post-fs-data.rc \
        $(LOCAL_PATH)/ramdisk/init.protocol.rc:root/init.protocol.rc \
        $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
        $(LOCAL_PATH)/ramdisk/init.recovery.hi110x.rc:root/init.recovery.hi110x.rc \
        $(LOCAL_PATH)/ramdisk/init.recovery.hi6210sft.rc:root/init.recovery.hi6210sft.rc \
        $(LOCAL_PATH)/ramdisk/init.recovery.huawei.rc:root/init.recovery.huawei.rc \
        $(LOCAL_PATH)/ramdisk/resetFactory.cfg:root/resetFactory.cfg \
        $(LOCAL_PATH)/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc \

PRODUCT_COPY_FILES +=  \
        $(LOCAL_PATH)/ramdisk/sbin/check_root:root/sbin/check_root \
        $(LOCAL_PATH)/ramdisk/sbin/emmc_partation:root/sbin/emmc_partation \
        $(LOCAL_PATH)/ramdisk/sbin/hw_ueventd:root/sbin/hw_ueventd \
        $(LOCAL_PATH)/ramdisk/sbin/kmsgcat:root/sbin/kmsgcat \
        $(LOCAL_PATH)/ramdisk/sbin/launch_daemonsu.sh:root/sbin/launch_daemonsu.sh \
        $(LOCAL_PATH)/ramdisk/sbin/logctl_service:root/sbin/logctl_service \
        $(LOCAL_PATH)/ramdisk/sbin/ntfs-3gd:root/sbin/ntfs-3gd \
        $(LOCAL_PATH)/ramdisk/sbin/oeminfo_nvm_server:root/sbin/oeminfo_nvm_server \
        $(LOCAL_PATH)/ramdisk/sbin/teecd:root/sbin/teecd \
        $(LOCAL_PATH)/ramdisk/sbin/volisnotd:root/sbin/volisnotd \

# Wifi
PRODUCT_PACKAGES += \
		libwpa_client \
		TIInit_11.8.32.bts \
		wificond \
		wl18xx-fw-4.bin \
		wl18xx-conf.bin \
		wpa_supplicant hostapd 

PRODUCT_PROPERTY_OVERRIDES += \
		wifi.interface=wlan0 \
        wifi.supplicant_scan_interval=15

# WPAN
$(call inherit-product-if-exists, device/huawei/hi6210sft/wpan/ti-wpan-products.mk)

# Zygote
PRODUCT_COPY_FILES += \
		system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
		ro.zygote=zygote64_32
