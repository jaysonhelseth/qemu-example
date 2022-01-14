#!/bin/sh

# accel=hvf is macOS specfic for better performance
# the net arguments allow port forwarding to the host

qemu-system-x86_64 \
    -machine type=q35,accel=hvf \
    -smp 2 \
    -hda ubuntuDisk0.qcow2 \
    -m 4G \
    -vga virtio \
    -usb \
    -device usb-tablet \
    -display default,show-cursor=on \
    -device e1000,netdev=net0 \
    -netdev user,id=net0,hostfwd=tcp::10022-:22
