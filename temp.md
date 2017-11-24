# Architecture

![Architecture](arch.jpg)

The beautiful image above needs explanation.

# SLURM setup

## Move to base

```bash

export DEBIAN_FRONTEND=noninteractive

apt-get install -yy bzip2 build-essential less

apt-get install -yy python #slurm
apt-get install -yy libssl-dev  #munge
apt-get install -yy slapd #slurm
apt-get install -yy isc-dhcp-server-ldap
```



```bash

wget https://download.schedmd.com/slurm/slurm-17.02.9.tar.bz2

wget https://github.com/dun/munge/archive/munge-0.5.13.tar.gz

tar zxf munge-0.5.13.tar.gz 
tar jxf slurm-17.02.9.tar.bz2 tar

cd munge-munge-0.5.13
./configure
make
make install
cd /

rm -rf munge*


cd slurm-17.02.9
./configure
make
make install
cd /

rm -rf slurm*

```

## Copy base to VMs


```bash
cp base.img support.img
```

# Installation

You need network access

You will need QEMU. On a Debian based distribution you can do:

`apt-get install qemu`

```bash


qemu-system-x86_64 -m 1G -drive file=pre-base.img,format=raw -vnc :1 -net nic,macaddr=52:54:00:12:34:56 -net socket,listen=:1234 -net user,hostfwd=tcp:127.0.0.1:22222-:22

```

https://help.ubuntu.com/lts/installation-guide/i386/apb.html


