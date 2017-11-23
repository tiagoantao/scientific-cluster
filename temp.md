# Architecture

![Architecture](arch.jpg)

The beautiful image above needs explanation.

# Installation

You need network access

You will need QEMU. On a Debian based distribution you can do:

`apt-get install qemu`

```bash


qemu-system-x86_64 -m 1G -drive file=pre-base.img,format=raw -vnc :1 -net nic,macaddr=52:54:00:12:34:56 -net socket,listen=:1234 -net user,hostfwd=tcp:127.0.0.1:22222-:22

```

https://help.ubuntu.com/lts/installation-guide/i386/apb.html


