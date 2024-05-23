#!/bin/bash

# dans le chroot

ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime
hwclock --systohc
locale-gen
echo "LANG=fr_FR.UTF-8" >> /etc/locale.conf
echo "KEYMAP=fr" >> /etc/vconsole.conf
