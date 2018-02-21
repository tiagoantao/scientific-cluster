export DEBIAN_FRONTEND=noninteractive
apt-get update; apt-get install -y slapd ldap-utils phpldapadmin
hostname ldap
echo ldap > /etc/hostname
ldapmodify -a -Q -Y EXTERNAL -H ldapi:/// -f /tmp/passwd.ldap
