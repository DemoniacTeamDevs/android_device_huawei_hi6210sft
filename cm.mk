# Cyanogen Mod
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Device Name
$(call inherit-product, device/huawei/hi6210sft/full_hi6210sft.mk)

PRODUCT_DEVICE := hi6210sft
PRODUCT_NAME := cm_hi6210sft
PRODUCT_BRAND := hi6210sft
PRODUCT_MODEL := hi6210sft
PRODUCT_MANUFACTURER := HUAWEI

