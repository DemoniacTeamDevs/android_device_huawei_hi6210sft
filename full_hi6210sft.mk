# Android Open Source Project Common
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Device Name
$(call inherit-product, device/huawei/hi6210sft/hi6210sft.mk)

PRODUCT_NAME := full_hi6210sft
PRODUCT_DEVICE := hi6210sft
PRODUCT_BRAND := hi6210sft
PRODUCT_MODEL := AOSP on HI6210SFT
PRODUCT_MANUFACTURER := HUAWEI
