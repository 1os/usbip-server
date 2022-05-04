#!/bin/sh

modprobe usbip-core
modprobe usbip-host
modprobe vhci-hcd

$SNAP/usr/bin/usbipd -D
$SNAP/usr/bin/usbip list -l

$SNAP/usr/bin/usbip bind -b $(snapctl get busid)