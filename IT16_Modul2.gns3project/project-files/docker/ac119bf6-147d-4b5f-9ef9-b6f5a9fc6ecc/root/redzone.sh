echo 'zone "redzone.it16.com" {' >> /etc/bind/named.conf.local
echo '	type master;' >> /etc/bind/named.conf.local
echo '	file "/etc/bind/redzone/redzone.it16.com";' >> /etc/bind/named.conf.local
echo '};' >> /etc/bind/named.conf.local

mkdir /etc/bind/redzone

#cp /etc/bind/db.local /etc/bind/redzone/redzone.it16.com

cp stuff/redzone.it16.com /etc/bind/redzone/redzone.it16.com

service bind9 restart
