# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Enable updating of APEXes
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from TWRP-common stuffs, if building TWRP.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

$(call inherit-product, device/oplus/OP4ABB/device.mk)	
## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := OP4ABB
PRODUCT_NAME := twrp_OP4ABB
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := OPPO A92S 5G
PRODUCT_MANUFACTURER := OPPO




