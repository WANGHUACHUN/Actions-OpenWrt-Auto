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
#cp -r -f ./feeds/xiangfeidexiaohuo/files/udpxy.lua ./feeds/luci/applications/luci-app-udpxy/luasrc/model/cbi

##fixed mosdns
rm -rf ./feeds/packages/net/mosdns
cp -r -f ./feeds/xiangfeidexiaohuo/op-mosdns ./feeds/packages/net/mosdns


## Modify default IP
sed -i 's/192.168.1.1/192.168.11.1/g' package/base-files/files/bin/config_generate

##加入作者信息
sed -i "s/DISTRIB_DESCRIPTION='*.*'/DISTRIB_DESCRIPTION='OpenWrt@autocc-$(date +%Y%m%d)'/g" package/lean/default-settings/files/zzz-default-settings
sed -i "s/DISTRIB_REVISION='*.*'/DISTRIB_REVISION=' autocc'/g" package/lean/default-settings/files/zzz-default-settings


##切换为samba4
#sed -i 's/luci-app-samba/luci-app-samba44/g' package/lean/autosamba/Makefile


sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=5.19/g' target/linux/x86/Makefile

# welcome test
