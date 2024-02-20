#!/bin/bash

# Check if directory /media/iso doesn't exist, then create it
if [ ! -d "/media/iso" ]; then
    mkdir /media/iso
fi

download="wget -O /media/iso/template/iso/"

x="y"

if [[ "$x" == "n" ]]; then
    read -p "Type the version: " debianver
else
    debianver="12.5.0"
fi

archlink="https://geo.mirror.pkgbuild.com/iso/latest/archlinux-x86_64.iso"
debnlink="https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-${debianver}-amd64-netinst.iso"

${download}arch.iso ${archlink}
${download}debian.iso ${debnlink}