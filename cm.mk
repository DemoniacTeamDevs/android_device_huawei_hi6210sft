# Cyanogen Mod
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

$(call inherit-product, device/huawei/hi6210sft/hi6210sft.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hi6210sft
PRODUCT_NAME := cm_hi6210sft
PRODUCT_BRAND := hi6210sft
PRODUCT_MODEL := hi6210sft
PRODUCT_MANUFACTURER := HUAWEI

