﻿#!/bin/bash
# 文件名：ping.sh
# 用途：根据网络配置对网络地址192.168.0进行修改

for ip in 192.168.0.{1..255} ;
do
	ping $ip -c 2 &> /dev/null ;
	
	if [ $? -eq 0 ]
	then
		echo $ip is alive
	fi
done