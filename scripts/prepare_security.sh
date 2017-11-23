sshpass -ptest ssh -p22222 root@localhost mkdir .ssh
sshpass -ptest scp -P22222 ~/.ssh/id_*pub root@localhost:.ssh/authorized_keys
ssh -p22222 root@localhost sed -ri \'s\/PermitRootLogin yes\/PermitRootLogin prohibit-password\/\' /etc/ssh/sshd_config
ssh -p22222 root@localhost halt
