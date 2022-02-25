#!/bin/sh
mkdir -p /dev/net
mknod /dev/net/tun c 10 200
chmod 666 /dev/net/tun