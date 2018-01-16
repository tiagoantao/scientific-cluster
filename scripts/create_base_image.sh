!#/bin/bash

if [ ! -e ubuntu-16.04.3-server-amd64.iso ]
then
    wget http://releases.ubuntu.com/16.04/ubuntu-16.04.3-server-amd64.iso
fi


mkdir iso
sudo mount -o loop ./ubuntu-16.04.3-server-amd64.iso iso/

mkdir iso2
cp -rT iso iso2


chmod u+w iso2/boot/grub
chmod u+w iso2/boot/grub/grub.cfg

chmod u+w iso2/isolinux
chmod u+w iso2/isolinux/isolinux.cfg
chmod u+w iso2/isolinux/txt.cfg
chmod a+w iso2/isolinux/isolinux.bin

chmod u+w iso2/boot

cp isolinux.cfg iso2/isolinux/isolinux.cfg
cp txt.cfg iso2/isolinux/txt.cfg
cp preseed.cfg iso2/boot


mkisofs -D -r -V cluster -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o auto.iso iso2 

qemu-img create pre-base.img 3G

qemu-system-x86_64 -cdrom auto.iso -m 1G -drive file=pre-base.img,format=raw -vnc :1

