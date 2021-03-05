#!/bin/bash
sed -i '/root/d' package/lean/default-settings/files/zzz-default-settings
sed -i 's/OpenWrt/RodeWind/g' package/lean/default-settings/files/zzz-default-settings
