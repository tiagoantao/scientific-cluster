scp -P22222 dhcp.config root@localhost:/etc/dhcp/dhclient-exit-hooks.d/hostname
scp -P22222 hosts root@localhost:/etc/hosts
ssh -p22222 root@localhost halt
