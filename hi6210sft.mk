# Android Open Source Projects
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_NAME := cm_hi6210sft
PRODUCT_DEVICE := hi6210sft
PRODUCT_BRAND := hi6210sft

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

# Dalvik
$(call inherit-product-if-exists, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

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
        device/linaro/hikey/etc/permissions/android.hardware.screen.xml:system/etc/permissions/android.hardware.screen.xml \
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
