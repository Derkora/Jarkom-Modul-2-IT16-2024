apt-get update
apt-get install bind9 -y
cp options.txt /etc/bind/named.conf.options
service bind9 restart
