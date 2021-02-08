sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate
sed -i 's/255.255.255.0/255.255.0.0/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/Wind/g' package/base-files/files/bin/config_generate
sed -i 's/+ariang/+ariang-nginx/g' package/feeds/luci/luci-app-aria2/Makefile
sed -i '/DISTRIB_REVISION/d' package/base-files/files/etc/openwrt_release
echo "DISTRIB_REVISION='$(date '+%Y.%m.%d')'" >> package/base-files/files/etc/openwrt_release
sed -i '/DISTRIB_DESCRIPTION/d' package/base-files/files/etc/openwrt_release
echo "DISTRIB_DESCRIPTION='Wind '" >> package/base-files/files/etc/openwrt_release