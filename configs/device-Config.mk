#################################
# TWRP - specific Configuration #
#################################
RECOVERY_SDCARD_ON_DATA := true
TW_THEME := portrait_hdpi
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_NO_SCREEN_BLANK := true
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_USES_MKE2FS := true
TW_OZIP_DECRYPT_KEY := 0000
TW_INCLUDE_LOGICAL := my_product my_engineering my_company my_carrier my_region my_heytap my_stock my_preload my_manifest
TW_PREPARE_DATA_MEDIA_EARLY := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/power_supply/battery/temp

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_USE_FSCRYPT_POLICY := 1
TW_INCLUDE_FBE_METADATA_DECRYPT := true

# Statusbar icons flags
#TW_STATUS_ICONS_ALIGN := center
#TW_Y_OFFSET := 115
#TW_H_OFFSET := -115
TW_CUSTOM_CPU_POS := 400
TW_CUSTOM_CLOCK_POS := 200
TW_CUSTOM_BATTERY_POS := 800

# Excludes
#TW_EXCLUDE_APEX := true
TW_EXCLUDE_TWRP_APP := true
TW_BACKUP_EXCLUSIONS := /data/fonts/,/data/nandswap

# Maintainer/Version
TW_DEVICE_VERSION := 酷安-玩机小白777

# Set brightness path and level
TW_MAX_BRIGHTNESS := 2047
TW_DEFAULT_BRIGHTNESS := 500
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"

# Include some binaries
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_BASH := true

# Use Toolbox instead of Busybox
TW_USE_TOOLBOX := true

# exFAT FS Support
TW_INCLUDE_FUSE_EXFAT := true

# NTFS Support
TW_INCLUDE_FUSE_NTFS := true

# Debug
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
#TWRP_EVENT_LOGGING := true

# Property Override
#TW_NO_LEGACY_PROPS := true
TW_OVERRIDE_SYSTEM_PROPS := "ro.build.version.sdk" #needed for Android 11 Gapps
#TW_OVERRIDE_SYSTEM_PROPS := \
     #"ro.build.date.utc;ro.bootimage.build.date.utc=ro.build.date.utc;ro.odm.build.date.utc=ro.build.date.utc;ro.product.build.date.utc=ro.build.date.utc;ro.system.build.date.utc=ro.build.date.utc;ro.system_ext.build.date.utc=ro.build.date.utc;ro.vendor.build.date.utc=ro.build.date.utc;ro.build.product;ro.build.fingerprint=ro.system.build.fingerprint;ro.build.version.incremental;ro.product.device=ro.product.system.device;ro.product.model=ro.product.system.model;ro.product.name=ro.product.system.name"
