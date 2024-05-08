echo 'zone "airdrop.it16.com" {' >> /etc/bind/named.conf.local
echo '	type master;' >> /etc/bind/named.conf.local
echo '	file "/etc/bind/airdrop/airdrop.it16.com";' >> /etc/bind/named.conf.local
echo '};' >> /etc/bind/named.conf.local

mkdir /etc/bind/airdrop

#cp /etc/bind/db.local /etc/bind/airdrop/airdrop.it16.com

cp stuff/airdrop.it16.com /etc/bind/airdrop/airdrop.it16.com

service bind9 restart
