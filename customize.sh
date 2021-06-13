#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
#sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate
sed -i "/uci commit fstab/a\uci commit network" $ZZZ
sed -i "/uci commit network/i\uci set network.lan.ipaddr='192.168.100.1'" $ZZZ                      # IPv4 地址(openwrt后台地址)
sed -i "/uci commit network/i\uci set network.lan.netmask='255.255.255.0'" $ZZZ                   # IPv4 子网掩码
#sed -i "/uci commit network/i\uci set network.lan.gateway='192.168.100.1'" $ZZZ                     # IPv4 网关
#sed -i "/uci commit network/i\uci set network.lan.broadcast='192.168.100.255'" $ZZZ                 # IPv4 广播
#sed -i "/uci commit network/i\uci set network.lan.dns='192.168.100.1'" $ZZZ                         # DNS(多个DNS要用空格分开)
sed -i "/uci commit network/i\uci set network.lan.delegate='0'" $ZZZ                              # 去掉LAN口使用内置的 IPv6 管理
#echo "close_dhcp" > package/base-files/files/etc/closedhcp                                        # 关闭DHCP服务

sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile           # 选择argon为默认主题

#sed -i "s/OpenWrt /${Author} Compiled in $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" $ZZZ          # 增加个性名字281677160

sed -i "/uci commit system/i\uci set system.@system[0].hostname='OpenWrt-x86'" $ZZZ            # 修改主机名称为x86-64-OpenWrt

#sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0/$1$PhflQnJ1$yamWfH5Mphs4hXV7UXWQ21:18725/g' $ZZZ  # 替换密码（要替换密码就不能设置密码为空）

sed -i '/CYXluq4wUazHjmCDBCqXF/d' $ZZZ                                                            # 设置密码为空

#sed -i 's/PATCHVER:=5.4/PATCHVER:=4.19/g' target/linux/x86/Makefile                              # 修改内核版本为4.19

#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
#git clone https://github.com/fw876/helloworld package/luci-app-ssr-plus
#git clone https://github.com/vernesong/OpenClash package/luci-app-openclash
#git clone https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr
#git clone https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall
#git clone https://github.com/destan19/OpenAppFilter package/luci-app-oaf
#git clone https://github.com/frainzy1477/luci-app-clash.git package/lean/luci-app-clash
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-opentomato package/luci-theme-opentomato
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-opentomcat package/luci-theme-opentomcat
#git clone https://github.com/sirpdboy/luci-app-autotimeset package/luci-app-autotimeset
git clone https://github.com/sirpdboy/NetSpeedTest package/NetSpeedTest
#git clone https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff
#svn co https://github.com/lisaac/luci-app-dockerman/trunk/applications/luci-app-dockerman package/luci-app-dockerman
#svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-dockerman package/luci-app-dockerman
#git clone https://github.com/lisaac/luci-app-dockerman package/lean/luci-app-dockerman
git clone https://github.com/sirpdboy/luci-theme-opentopd package/luci-theme-opentopd
# 修改插件名字
#sed -i 's/"aMule设置"/"电驴下载"/g' `grep "aMule设置" -rl ./`
#sed -i 's/"网络存储"/"存储"/g' `grep "网络存储" -rl ./`
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' `grep "Turbo ACC 网络加速" -rl ./`
#sed -i 's/"实时流量监测"/"流量"/g' `grep "实时流量监测" -rl ./`
#sed -i 's/"KMS 服务器"/"KMS激活"/g' `grep "KMS 服务器" -rl ./`
#sed -i 's/"TTYD 终端"/"命令窗"/g' `grep "TTYD 终端" -rl ./`
sed -i 's/"USB 打印服务器"/"打印服务"/g' `grep "USB 打印服务器" -rl ./`
#sed -i 's/"Web 管理"/"Web"/g' `grep "Web 管理" -rl ./`
#sed -i 's/"管理权"/"改密码"/g' `grep "管理权" -rl ./`
#sed -i 's/"带宽监控"/"监控"/g' `grep "带宽监控" -rl ./`
#sed -i 's/"Argon 主题设置"/"Argon设置"/g' `grep "Argon 主题设置" -rl ./`
