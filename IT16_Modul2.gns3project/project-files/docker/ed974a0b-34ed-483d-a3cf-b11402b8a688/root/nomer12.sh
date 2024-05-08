
echo nameserver 192.241.4.2 > /etc/resolv.conf

apt-get update

apt-get install lynx
apt-get install wget
apt-get install apache2
apt-get install unzip
apt-get install php

service apache2 start

wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=11S6CzcvLG-dB0ws1yp494IURnDvtIOcq' -O dir-listing.zip
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1xn03kTB27K872cokqwEIlk8Zb121HnfB' -O lb.zip

unzip dir-listing.zip -d dr-listing
unzip lb.zip -d lb

