# android_device_mtk6873
构建适用 OPPO-Realme  A92STWRP

## 特征

工作情况:

- adb
- mtp
- fastbootd
- data 解密
- 亮度
- 触摸

## 编译

First checkout minimal twrp with omnirom tree:

```
repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1

repo sync -j64
|

repo sync --force-sync --no-clone-bundle --no-tags -j$(nproc --all)
```

Finally execute these:

```
. build/envsetup.sh
lunch twrp_OP4ABB-eng
mka -j$(nproc --all) recoveryimage
```
