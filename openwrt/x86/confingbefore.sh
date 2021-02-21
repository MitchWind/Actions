#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.
wget -P tools/upx/ https://raw.githubusercontent.com/streetwind/openwrt-tools/main/upx/Makefile
wget -P tools/ucl/ https://raw.githubusercontent.com/coolsnowwolf/lede/master/tools/ucl/Makefile
sed -i "38i tools-y += ucl upx" tools/Makefile
sed -i "40i $\(curdir\)/upx/compile := $\(curdir\)/ucl/compile" tools/Makefile


