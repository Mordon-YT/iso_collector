if ! test -d "/media/iso"; then
    mkdir /media/iso
if
download="wget -O /media/iso/templates/iso"
if [[$x == y]]; then
    read debianver
    else;
        debianver=12.5.0
fi
archlink="https://geo.mirror.pkgbuild.com/iso/latest/archlinux-x86_64.iso"
debnlink="https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-${}-amd64-netinst.iso"

${download}arch.iso ${archlink}
${download}debian.iso ${debnlink}