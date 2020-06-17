#!/bin/sh
echo =============================================================
echo "* soft     nofile         65535" >> /etc/security/limits.conf
echo "* hard    nofile         65535" >> /etc/security/limits.conf

