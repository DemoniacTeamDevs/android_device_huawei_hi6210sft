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
