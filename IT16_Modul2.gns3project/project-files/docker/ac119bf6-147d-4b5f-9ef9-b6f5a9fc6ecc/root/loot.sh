echo 'zone "loot.it16.com" {' >> /etc/bind/named.conf.local
echo '	type master;' >> /etc/bind/named.conf.local
echo '	file "/etc/bind/loot/loot.it16.com";' >> /etc/bind/named.conf.local
echo '};' >> /etc/bind/named.conf.local

mkdir /etc/bind/loot

#cp /etc/bind/db.local /etc/bind/loot/loot.it16.com

cp stuff/loot.it16.com /etc/bind/loot/loot.it16.com

service bind9 restart
