scp -P22222 conf/base/dhcp.config root@localhost:/etc/dhcp/dhclient-exit-hooks.d/hostname
scp -P22222 conf/base/hosts root@localhost:/etc/hosts
ssh -p22222 root@localhost halt
