#!/bin/bash

scp -P22222 conf/ldap/config.sh root@localhost:/sbin
scp -P22222 conf/ldap/passwd.ldap root@localhost:/tmp
scp -P22222 conf/ldap/config.php root@localhost:/etc/phpldapadmin
ssh -p22222 root@localhost bash /sbin/config.sh
scp -P22222 conf/base/hosts root@localhost:/etc/hosts
ssh -p22222 root@localhost halt


