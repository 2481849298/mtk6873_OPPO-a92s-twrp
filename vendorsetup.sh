# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 OrangeFox Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FDEVICE="OP4ABB"
#set -o xtrace

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
   if [ -n "$chkdev" ]; then
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then

# let's see what are our build VARs
# Initial Exports
	export ALLOW_MISSING_DEPENDENCIES=true
	export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
    export LC_ALL="C"

# Version / Maintainer infos.
	export OF_MAINTAINER="酷安-玩机小白777"
	export FOX_VERSION="R11.1_1"
	export FOX_BUILD_TYPE="Unofficial-Stable"

# Custom pic for the maintainer's info in about section
	export OF_MAINTAINER_AVATAR="$PWD/device/oplus/OP4ABB/maintainer.png"
	
# Device Information.
	export FOX_ARCH=arm64
	export FOX_VARIANT="A12_FBEv1"
	export TARGET_DEVICE_ALT="OP4ABB,PDKT00,PDKM00" # I am not what are the over possible names.

# Partitions Handling
	export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/by-name/recovery"
	export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
	export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
	export FOX_RECOVERY_BOOT_PARTITION="/dev/block/by-name/boot"

# OTA / DM-Verity / Encryption
    # Disabled the OTA settings by default.
		export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
		export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
	# Prevent patching DM-verity & Forced-Encryption.
		export OF_DONT_PATCH_ON_FRESH_INSTALLATION=1
    # Prevent Forced-Encryption Patches.
	#export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
    # UNTICK on boot.
    	export OF_KEEP_DM_VERITY_FORCED_ENCRYPTION=1
    # Don't try to decrypt Upgraded android versions.
	#export OF_SKIP_FBE_DECRYPTION_SDKVERSION=34
    # Binary Android 12 storage.xml.
		export OF_SKIP_DECRYPTED_ADOPTED_STORAGE=1
		
# Display / Leds
    # Screen adjustments
		export OF_SCREEN_H="2340"
		export OF_STATUS_H="120"
		export OF_STATUS_INDENT_LEFT=150
		export OF_STATUS_INDENT_RIGHT=20
    # Hides notch.
		export OF_HIDE_NOTCH=1
    # Left and right clock positions available.
		export OF_CLOCK_POS=1
    # Green led setting.
	#export OF_USE_GREEN_LED=1
	# Always Enable NavBar.
    	export OF_ALLOW_DISABLE_NAVBAR=0

# Funtions
    # Replace Busybox version.
		export FOX_REPLACE_BUSYBOX_PS=1
	# Getprops.
	#export FOX_REPLACE_TOOLBOX_GETPROP=1
	# Tar Support.
	#export FOX_USE_TAR_BINARY=1
	# Sed Support.
	#export FOX_USE_SED_BINARY=1
	# Bash Support
		export FOX_USE_BASH_SHELL=1
		export FOX_ASH_IS_BASH=1
	# GRep Command.
	#export FOX_USE_GREP_BINARY=1
	# Supports lzma and xz.
	#export FOX_USE_XZ_UTILS=1
	# Uses Nano editor.
		export FOX_USE_NANO_EDITOR=1
	# Added phhusson's LPTool.
		export OF_ENABLE_LPTOOLS=1
    # Quick backup list.
    	export OF_QUICK_BACKUP_LIST="/boot;/data;"
    # Build Date and Time Override.
		export FOX_BUGGED_AOSP_ARB_WORKAROUND="1546300800" # Tue Jan 1 2019 00:00:00 GMT
	# Delete AromaFM.
    	export FOX_DELETE_AROMAFM=1
    # Prevent Self-Restarting Process.
		export OF_NO_RELOAD_AFTER_DECRYPTION=1
    #OrangeFox is not replaced by stock recovery.
		export OF_PATCH_AVB20=1
    # Prevent Splash Screen Changing.
		export OF_NO_SPLASH_CHANGE=0
    # Magisk Boot Patch.
	#export OF_USE_MAGISKBOOT=1 
		export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
    # Metadata Support.
	#export OF_FBE_METADATA_MOUNT_IGNORE=1 
	# Multi-user Backup fix (error 255).
		export OF_SKIP_MULTIUSER_FOLDERS_BACKUP=1
	# try to prevent potential data format errors.
		export OF_UNBIND_SDCARD_F2FS=1
	# Skip compatibility checking
		export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
    # Attempts to reduce the size of the recovery image.
   		export FOX_DRASTIC_SIZE_REDUCTION=1
	# Disable some operations relating only to Samsung devices.
		export OF_NO_SAMSUNG_SPECIAL=1
    # Not reset OrangeFox settings to defaults.
   		export FOX_RESET_SETTINGS=1
	# For removing the aapt binary from the build for reducing the size of the recovery.
		export FOX_REMOVE_AAPT=0
	# 40-second countdown.
		export OF_CHECK_OVERWRITE_ATTEMPTS=1
    # Enable the advanced security features.
		export OF_ADVANCED_SECURITY=1
	# Delete the initd addon.
		export FOX_DELETE_INITD_ADDON=0
    # SAR detection.
		export OF_USE_TWRP_SAR_DETECT=1
    # Enable the flashlight feature.
		export OF_FLASHLIGHT_ENABLE=1
	# Set custom flashlight path.
		export OF_FL_PATH1="/sys/class/flashlight/mt-flash-led1/mode"
		export OF_FL_PATH1="/sys/class/flashlight/mt-flash-led2/mode"
    # MIUI OTA, and dm-verity/forced-encryption patching will be disabled
		export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
	# Enable support for Realme oZip decryption
		export OF_SUPPORT_OZIP_DECRYPTION=1
    # To avoid the new 'NO KERNEL CONFIG' error, when using a prebuilt kernel
		export OF_FORCE_PREBUILT_KERNEL=1
    # This is useful for non-Xiaomi devices
		export OF_NO_ADDITIONAL_MIUI_PROPS_CHECK=1
	# Point to an alternative Magisk addon installer zip	
	#	export FOX_USE_SPECIFIC_MAGISK_ZIP=~/Magisk/Magisk-v26.1.zip

	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
	  export | grep "FOX" >> $FOX_BUILD_LOG_FILE
	  export | grep "OF_" >> $FOX_BUILD_LOG_FILE
	  export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
	  export | grep "TW_" >> $FOX_BUILD_LOG_FILE
	fi
fi		
