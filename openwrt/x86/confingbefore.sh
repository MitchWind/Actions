wget -P tools/upx/ https://raw.githubusercontent.com/streetwind/openwrt-tools/main/upx/Makefile
wget -P tools/ucl/ https://raw.githubusercontent.com/coolsnowwolf/lede/master/tools/ucl/Makefile
sed -i "38i tools-y += ucl upx" tools/Makefile
sed -i "40i $\(curdir\)/upx/compile := $\(curdir\)/ucl/compile" tools/Makefile