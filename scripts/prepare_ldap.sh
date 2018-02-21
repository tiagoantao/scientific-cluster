scp -P22222 conf/dhcp-ldap/config.sh root@localhost:/sbin
ssh -p22222 bash /sbin/config.sh
scp -P22222 conf/base/hosts root@localhost:/etc/hosts
scp -P22222 conf/dhcp-ldap/interfaces root@localhost:/etc/network
ssh -p22222 root@localhost halt


export DEBIAN_FRONTEND=noninteractive
ssh -p22222 root@localhost halt
