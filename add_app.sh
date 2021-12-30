#!/usr/bin/bash

qemu-img create -f raw HDD_BOOT.img 64M 
mkfs.vfat HDD_BOOT.img
losetup  /dev/loop8 HDD_BOOT.img
sudo mkdir -p /mnt/hello
sudo mount /dev/loop8 /mnt/hello
sudo cp $1 /mnt/hello/
sudo umount /dev/loop8
sudo losetup -d /dev/loop8
