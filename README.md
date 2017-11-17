# Scientific Cluster

A implementation of a scientific cluster on top of QEMU.

This allows to test different architectures, components and policies.

It can also serve to maintain a virtual version of whatever is in production (to test stuff, document, ...)

# Requirements

- An OS that can run QEMU
- 12 GB of memory
- ~30 GB of free disk space

# Used components

- A Debian based Linux
- SLURM as a queuing manager
- LUSTRE as the cluster file system
- NFS to export externally
- LDAP (OpenLDAP) for user management

# Architecture

![Architecture](arch.jpg)

The beautiful image above needs explanation.

# Installation

You need network access

You will need QEMU. On a Debian based distribution you can do:

`apt-get install qemu`

```bash

wget //releases.ubuntu.com/16.04/ubuntu-16.04.3-server-amd64.iso




mkdir iso

mount -o loop ./ubuntu-16.04.3-server-amd64.iso /home/tiago_antao/iso/

mkdir iso2

cp -rT iso iso2



chmod a+w iso2/isolinux/isolinux.bin 

chmod u+w isos2/boot 

cp txt.cfg iso2/isolinux/txt.cfg

cp preseed.cfg iso2/boot


mkisofs -D -r -V cluster -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o ~/auto.iso ~/iso2qemu-system-x86_64 -cdrom auto.iso 

qemu-img create test.img 1G

qemu-system-x86_64 -cdrom auto.iso -m 1G  -hda test.img

```

https://help.ubuntu.com/lts/installation-guide/i386/apb.html

# FAQ

## Why not Docker?

LUSTRE requires access to block volumes.
