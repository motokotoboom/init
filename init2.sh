#!/bin/sh
echo 'net.ipv4.ip_local_port_range = 12000 65535' >> /etc/sysctl.conf
echo 'fs.file-max = 1048576' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_fin_timeout=30' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_tw_recycle=1' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_tw_reuse=1' >> /etc/sysctl.conf
echo 'net.core.somaxconn=1024' >> /etc/sysctl.conf
echo 'net.core.netdev_max_backlog=2000' >> /etc/sysctl.conf
echo 'net.ipv4.tcp_max_syn_backlog=2048' >> /etc/sysctl.conf
echo '*                soft    nofile          1048576' >> /etc/security/limits.conf
echo '*                hard    nofile          1048576' >> /etc/security/limits.conf
echo 'root             soft    nofile          1048576' >> /etc/security/limits.conf
echo 'root             hard    nofile          1048576' >> /etc/security/limits.conf

echo "/sbin/ifconfig eth0 txqueuelen 5000" >> /etc/rc.local
