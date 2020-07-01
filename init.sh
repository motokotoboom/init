#!/bin/sh
echo =============================================================
echo "* soft     nofile         65535" >> /etc/security/limits.conf
echo "* hard    nofile         65535" >> /etc/security/limits.conf

echo "fs.file-max=16384" >> /etc/sysctl.conf
echo "net.ipv4.conf.all.send_redirects=0" >> /etc/sysctl.conf
echo "net.ipv4.conf.all.accept_redirects=0" >> /etc/sysctl.conf
echo "net.ipv4.conf.all.secure_redirects=0" >> /etc/sysctl.conf
echo "net.core.rmem_default=201250" >> /etc/sysctl.conf
echo "net.core.wmem_default=201250" >> /etc/sysctl.conf
echo "net.core.rmem_max=256000" >> /etc/sysctl.conf
echo "net.core.wmem_max=256000" >> /etc/sysctl.conf
echo "net.ipv4.tcp_fin_timeout=15" >> /etc/sysctl.conf
echo "net.core.netdev_max_backlog=3000" >> /etc/sysctl.conf
echo "net.core.somaxconn=3000" >> /etc/sysctl.conf
echo "net.ipv4.tcp_keepalive_intvl=5" >> /etc/sysctl.conf
echo "net.ipv4.tcp_keepalive_probes=3" >> /etc/sysctl.conf
echo "net.ipv4.ip_local_port_range=1024 65000" >> /etc/sysctl.conf
echo "net.ipv4.tcp_syncookies=0" >> /etc/sysctl.conf
echo "net.ipv4.tcp_mtu_probing=1" >> /etc/sysctl.conf
echo "net.ipv4.tcp_syncookies = 0" >> /etc/sysctl.conf
echo "net.ipv4.tcp_moderate_rcvbuf=0" >> /etc/sysctl.conf
echo "net.ipv4.tcp_low_latency = 1" >> /etc/sysctl.conf
sysctl -p