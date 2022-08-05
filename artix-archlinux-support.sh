#!/bin/sh
clear

echo '

[universe]
Server = https://universe.artixlinux.org/$arch
Server = https://mirror1.artixlinux.org/universe/$arch
Server = https://mirror.pascalpuffke.de/artix-universe/$arch
Server = https://artixlinux.qontinuum.space/artixlinux/universe/os/$arch
Server = https://mirror1.cl.netactuate.com/artix/universe/$arch
Server = https://ftp.crifo.org/artix-universe/' >> /etc/pacman.conf

pacman -Sy
pacman -S artix-archlinux-support

echo '

# Arch Linux repos


[core]
Include = /etc/pacman.d/mirrorlist-arch


[extra]
Include = /etc/pacman.d/mirrorlist-arch


[community]
Include = /etc/pacman.d/mirrorlist-arch


[multilib]
Include = /etc/pacman.d/mirrorlist-arch
' >> /etc/pacman.conf

clear

pacman-key --populate archlinux
pacman -Sy
