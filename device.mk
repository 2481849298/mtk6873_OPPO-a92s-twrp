DEVICE_PATH := device/oplus/OP4ABB

#BOARD_SHIPPING_API_LEVEL := 31
#BOARD_API_LEVEL := 31
#SHIPPING_API_LEVEL := 31
#PRODUCT_SHIPPING_API_LEVEL := 31
#PRODUCT_TARGET_VNDK_VERSION := 31

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# OEM otacerts
PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(DEVICE_PATH)/security/special_OTA \
    $(DEVICE_PATH)/security/local_OTA

    
# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Extra required packages
PRODUCT_PACKAGES += \
    libion
    
# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mtk \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd
    
BUILD_FINGERPRINT := oplus/ossi/ossi:12/SP1A.210812.016/1694426926964:user/release-keys