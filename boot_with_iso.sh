#!/bin/sh

#accel=hvf is macOS specfic for better performance

qemu-system-x86_64 \
    -machine type=q35,accel=hvf \
    -smp 2 \
    -hda ubuntuDisk0.qcow2 \
    -cdrom ./ubuntu-20.04.3-desktop-amd64.iso \
    -m 4G \
    -vga virtio \
    -usb \
    -device usb-tablet \
    -display default,show-cursor=on \
    -full-screen