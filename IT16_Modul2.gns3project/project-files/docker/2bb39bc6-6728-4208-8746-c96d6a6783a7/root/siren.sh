echo 'zone "siren.redzone.it16.com" {' >> /etc/bind/named.conf.local
echo '	type master;' >> /etc/bind/named.conf.local
echo '	file "/etc/bind/siren/siren.redzone.it16.com";' >> /etc/bind/named.conf.local
echo '};' >> /etc/bind/named.conf.local

mkdir /etc/bind/siren

#cp /etc/bind/db.local /etc/bind/siren/siren.redzone.it16.com

cp stuff/siren.redzone.it16.com /etc/bind/siren/siren.redzone.it16.com

service bind9 restart
