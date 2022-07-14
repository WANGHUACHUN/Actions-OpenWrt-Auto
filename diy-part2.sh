#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

##补充汉化       
#cp -f ./feeds/xiangfeidexiaohuo/files/udpxy.lua ./feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi
cp -f ./feeds/xiangfeidexiaohuo/files/mwan3.po ./feeds/luci/applications/luci-app-mwan3/po/zh-cn

# Modify default IP
sed -i 's/192.168.1.1/192.168.11.1/g' package/base-files/files/bin/config_generate


##切换为samba4
sed -i 's/luci-app-samba/luci-app-samba4/g' package/lean/autosamba/Makefile

sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=5.18/g' target/linux/x86/Makefile
#sed -i "s/KERNEL_TESTING_PATCHVER:=*.*/KERNEL_TESTING_PATCHVER:=5.18/g" target/linux/x86/Makefile
#sed -i 's/luci-lib-ipkg/luci-base/g' package/feeds/kenzok/luci-app-store/Makefile
#sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.15/g' target/linux/x86/Makefile
#sed -i "s/.*PKG_VERSION:=.*/PKG_VERSION:=4.3.9_v1.2.14/" package/lean/qBittorrent-static/Makefile
#sed -i "s/.*PKG_VERSION:=.*/PKG_VERSION:=5.0.0-stable/" package/libs/wolfssl/Makefile
# welcome test 
