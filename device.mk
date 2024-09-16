DEVICE_PATH := device/oplus/OP4ABB


# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Extra required packages

PRODUCT_PACKAGES += \
    libion
    
# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    android.hardware.fastboot@1.0-impl-mtk \
    fastbootd
    
BUILD_FINGERPRINT := oplus/ossi/ossi:12/SP1A.210812.016/1694426926964:user/release-keys