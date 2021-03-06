#!/bin/bash
sed -i '/root/d' package/default-settings/files/zzz-default-settings
sed -i 's/OpenWrt/RodeWind/g' package/default-settings/files/zzz-default-settings
