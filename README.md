# Jarkom-Modul-2-IT16-2024

## Anggota Kelompok
| NRP        | Nama                    |
|:----------:|:-----------------------:|
| 5027221020 | Wikri Cahya Syahrila    |
| 5027221021 | Steven Figo             |

### Soal 1
Untuk membantu pertempuran di Erangel, kamu ditugaskan untuk membuat jaringan komputer yang akan digunakan sebagai alat komunikasi. Sesuaikan rancangan Topologi dengan rancangan dan pembagian yang berada di link yang telah disediakan, dengan ketentuan nodenya sebagai berikut :
- DNS Master akan diberi nama Pochinki, sesuai dengan kota tempat dibuatnya server tersebut
- Karena ada kemungkinan musuh akan mencoba menyerang Server Utama, maka buatlah DNS Slave Georgopol yang mengarah ke Pochinki
- Markas pusat juga meminta dibuatkan tiga Web Server yaitu Severny, Stalber, dan Lipovka. Sedangkan Mylta akan bertindak sebagai Load Balancer untuk server-server tersebut

![1 1](https://github.com/Derkora/Jarkom-Modul-2-IT16-2024/assets/110652010/79a7061d-3d4d-4060-828f-7b56275d37ab)

### Soal 2
Karena para pasukan membutuhkan koordinasi untuk mengambil airdrop, maka buatlah sebuah domain yang mengarah ke Stalber dengan alamat airdrop.xxxx.com dengan alias www.airdrop.xxxx.com dimana xxxx merupakan kode kelompok. Contoh : airdrop.it01.com
- pada `Pochinki`

![2 3](https://github.com/Derkora/Jarkom-Modul-2-IT16-2024/assets/110652010/fbb0420e-a767-4189-a3e5-36eb146c1785)
- bash airdrop.sh
- nano /etc/bind/airdrop/airdrop.it16.com
- ubah isinya localhost menjadi airdrop.it16.com
- ubah ipnya menjadi 192.241.4.3 ; IP Stalber
- tambah www IN CNAME airdrop.it16.com

sesuai gambar dibawah ini

![2 2](https://github.com/Derkora/Jarkom-Modul-2-IT16-2024/assets/110652010/5cc2faf7-4ae2-4b3e-8e9c-20bbd9b0a8af)

### Soal 3
Para pasukan juga perlu mengetahui mana titik yang sedang di bombardir artileri, sehingga dibutuhkan domain lain yaitu redzone.xxxx.com dengan alias www.redzone.xxxx.com yang mengarah ke Severny
- pada `Pochinki`

![3 1](https://github.com/Derkora/Jarkom-Modul-2-IT16-2024/assets/110652010/ce49a909-1c5f-4fef-96ae-1ecd3f96f411)
- bash redzone.sh

lakukan hal yang sama dengan nomor 2

![3 2](https://github.com/Derkora/Jarkom-Modul-2-IT16-2024/assets/110652010/9656c8d4-cdc7-4bee-a63b-a951e40b8fc8)

### Soal 4
Markas pusat meminta dibuatnya domain khusus untuk menaruh informasi persenjataan dan suplai yang tersebar. Informasi persenjataan dan suplai tersebut mengarah ke Mylta dan domain yang ingin digunakan adalah loot.xxxx.com dengan alias www.loot.xxxx.com
- pada `Pochinki`

![4 1](https://github.com/Derkora/Jarkom-Modul-2-IT16-2024/assets/110652010/2d09bdc4-ded5-4caa-9399-ef16e37140a7)

lakukan hal yang sama dengan nomor 2

![4 2](https://github.com/Derkora/Jarkom-Modul-2-IT16-2024/assets/110652010/805a7099-b92c-4286-aed1-7c66d10de3cf)

### Soal 5
Pastikan domain-domain tersebut dapat diakses oleh seluruh komputer (client) yang berada di Erangel
- pada `Erangel`

![5 2](https://github.com/Derkora/Jarkom-Modul-2-IT16-2024/assets/110652010/b34585e4-56cf-4651-9830-84c6879e69ff)

dapat melakukan ping
### Soal 6
Beberapa daerah memiliki keterbatasan yang menyebabkan hanya dapat mengakses domain secara langsung melalui alamat IP domain tersebut. Karena daerah tersebut tidak diketahui secara spesifik, pastikan semua komputer (client) dapat mengakses domain redzone.xxxx.com melalui alamat IP Severny (Notes : menggunakan pointer record)


### Soal 7
Akhir-akhir ini seringkali terjadi serangan siber ke DNS Server Utama, sebagai tindakan antisipasi kamu diperintahkan untuk membuat DNS Slave di Georgopol untuk semua domain yang sudah dibuat sebelumnya
- pada `Pochinki`

![7 1](https://github.com/Derkora/Jarkom-Modul-2-IT16-2024/assets/110652010/19e9abed-a596-4693-b700-6345c046dc84)
menambahkan allow notify dan allow quarry ke IP Georgopol
- pada `Georgopol`

![7 4](https://github.com/Derkora/Jarkom-Modul-2-IT16-2024/assets/110652010/6dac56e4-1a7a-4230-ac44-9288ff2b688f)
melakukan konfigurasi pada /etc/bind/named.local.conf

### Soal 8
Kamu juga diperintahkan untuk membuat subdomain khusus melacak airdrop berisi peralatan medis dengan subdomain medkit.airdrop.xxxx.com yang mengarah ke Lipovka
- pada `Pochinki`
  
![8 1](https://github.com/Derkora/Jarkom-Modul-2-IT16-2024/assets/110652010/e2ccade4-df86-4a7e-ba2a-f7de49af7d8b)
memberikan tambahan medkit lalu diarahkan ke lipovka

### Soal 9
Terkadang red zone yang pada umumnya di bombardir artileri akan dijatuhi bom oleh pesawat tempur. Untuk melindungi warga, kita diperlukan untuk membuat sistem peringatan air raid dan memasukkannya ke subdomain siren.redzone.xxxx.com dalam folder siren dan pastikan dapat diakses secara mudah dengan menambahkan alias www.siren.redzone.xxxx.com dan mendelegasikan subdomain tersebut ke Georgopol dengan alamat IP menuju radar di Severny
- pada `Georgopol`
  
![9 2](https://github.com/Derkora/Jarkom-Modul-2-IT16-2024/assets/110652010/2a01f759-2d11-4b8e-a2cc-20962aaf6dde)
menambahkan siren pada georgopol

### Soal 10
Markas juga meminta catatan kapan saja pesawat tempur tersebut menjatuhkan bom, maka buatlah subdomain baru di subdomain siren yaitu log.siren.redzone.xxxx.com serta aliasnya www.log.siren.redzone.xxxx.com yang juga mengarah ke Severny
- pada `Georgopol`

![10 1](https://github.com/Derkora/Jarkom-Modul-2-IT16-2024/assets/110652010/5988116f-e7b4-4da4-aa68-63940927cab0)
menambahkan www.log

### Soal 11
Setelah pertempuran mereda, warga Erangel dapat kembali mengakses jaringan luar, tetapi hanya warga Pochinki saja yang dapat mengakses jaringan luar secara langsung. Buatlah konfigurasi agar warga Erangel yang berada diluar Pochinki dapat mengakses jaringan luar melalui DNS Server Pochinki
- pada `Pochinki`

![11 2](https://github.com/Derkora/Jarkom-Modul-2-IT16-2024/assets/110652010/ae88b0da-d1cc-4efd-92e8-80a1769a6ce9)
dengan melakukan dns forwarding menggunakna IP Erangel

### Soal 12
Karena pusat ingin sebuah website yang ingin digunakan untuk memantau kondisi markas lainnya maka deploy lah webiste ini (cek resource yg lb) pada severny menggunakan apache
Buatlah script seperti ini
```
echo nameserver 192.241.4.2 > /etc/resolv.conf

apt-get update

apt-get install lynx
apt-get install wget
apt-get install apache2
apt-get install unzip
apt-get install php
apt-get install libapache2-mod-php7.0

service apache2 start

wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=11S6CzcvLG-dB0ws1yp494IURnDvtIOcq'$wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1xn03kTB27K872cokqwEIlk8Zb121HnfB'$

unzip dr-listing.zip -d dr-listing
unzip lb.zip  -d  lb

cp ./lb/worker/index.php /var/www/html/index.php
```
Script tersebut gunakan di semua webserver (Severny Stalber Lipovka)

Install lynx di client menggunakan script
```
apt-get update
apt-get install lynx
```
Lalu cek di client menggunakan command 
``` lynx http://192.241.4.2/index.php ```


### Soal 13
Tapi pusat merasa tidak puas dengan performanya karena traffic yag tinggi maka pusat meminta kita memasang load balancer pada web nya, dengan Severny, Stalber, Lipovka sebagai worker dan Mylta sebagai Load Balancer menggunakan apache sebagai web server nya dan load balancernya
Gunakan script pada loadbalancernya seperti ini

```
<VirtualHost *:80>
    <Proxy balancer://mycluster>
      BalancerMember http://192.241.4.2:80
      BalancerMember http://192.241.4.3:80
      BalancerMember http://192.241.4.4:80
    </Proxy>
    ProxyPreserveHost On
    ProxyPass / balancer://mycluster/
    ProxyPassReverse / balancer://mycluster/
</VirtualHost>
```
Jangan lupa mengikuti di modul dengan script berikut
```
a2enmod proxy
a2enmod proxy_http
a2enmod proxy_balancer

cp loadBalance.conf /etc/apache2/sites-available/loadBalance.conf
rm 000-default.conf

a2ensite loadBalance.conf

service apache2 restart
```

Lalu cek di client menggunakan command 
```
lynx http://192.241.4.3/index.php
lynx http://192.241.4.4/index.php 
```


### Soal 14
Mereka juga belum merasa puas jadi pusat meminta agar web servernya dan load balancer nya diubah menjadi nginx
Setup worker dan myltanya
```
service apache2 stop
upstream testbackend  {
        server 192.241.4.2; #IP Severny
        server 192.241.4.3; #IP Stalber
        server 192.241.4.4; #IP Lipovka
}

server {
        listen 80;
        server_name mylta.it16.com www.mylta.it16.com;

        location / {
          proxy_pass http://testbackend;
        }
}

service nginx start

rm /etc/nginx/sites-enabled/default
cp lb-jarkom /etc/nginx/sites-available/lb-jarkom

ln -s /etc/nginx/sites-available/lb-jarkom /etc/nginx/sites-enabled/lb-jarkom

service nginx restart
```
Setup workernya 
```
server {
    listen 80;
    root /var/www/jarkom;
    index index.php index.html index.htm;
    server_name tamat.it16.com www.tamat.it16.com;

    location / {
        try_files $uri $uri/ /index.php?$query_string;
    }

    location /worker2 {
        index index.html;
        autoindex on;
        autoindex_exact_size off;
    }

    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/var/run/php/php7.0-fpm.sock;
    }

    location ~ /\.ht {
        deny all;
    }

    error_log /var/log/nginx/jarkom_error.log;
    access_log /var/log/nginx/jarkom_access.log;
}

service apache2 stop

apt install php-fpm -y

service php7.0-fpm start

mkdir /var/www/jarkom

cp ./lb/worker/index.php /var/www/jarkom/index.php

rm /etc/nginx/sites-enabled/default

cp defaultnginx /etc/nginx/sites-available/defaultnginx
ln -s /etc/nginx/sites-available/defaultnginx /etc/nginx/sites-enabled/defaultnginx

service nginx restart

nginx -t
```
### Soal 15
Analisa

### Soal 16
Karena dirasa kurang aman karena masih memakai IP, markas ingin akses ke mylta memakai mylta.xxx.com dengan alias www.mylta.xxx.com (sesuai web server terbaik hasil analisis kalian)
Setup pochinki
```
echo 'zone "mylta.it16.com" {
    type master;
    file "/etc/bind/jarkom/mylta.it16.com";
};' >> /etc/bind/named.conf.local

echo ';
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     mylta.it16.com. root.mylta.it16.com. (
                                2         ; Serial
                                604800    ; Refresh
                                86400     ; Retry
                                2419200   ; Expire
                                604800 )  ; Negative Cache TTL
;
@       IN      NS      mylta.it16.com.
@       IN      A       192.241.4.5       ; IP Mylta
www     IN      CNAME   mylta.it16.com.' > /etc/bind/jarkom/mylta.it16.com

service bind9 restart
```
lalu test ping dan test lynx www.mylta.16.com

### Soal 17
Agar aman, buatlah konfigurasi agar mylta.xxx.com hanya dapat diakses melalui port 14000 dan 14400
Caranya mirip" sama kayak yang nomer 16 tinggal mindah listennya aja
```
upstream myweb  {
        server 192.241.4.2:80; #IP Severny
        server 192.241.4.3:80; #IP Stalber
        server 192.241.4.4:80; #IP Lipovka
}

server {
        listen 14000;
        server_name mylta.it16.com www.mylta.it16.com;

        location / {
          proxy_pass http://testbackend;
        }
}

server {
        listen 14400;
        server_name mylta.it16.com www.mylta.it16.com;

        location / {
          proxy_pass http://testbackend;
        }
}

server {
    listen 80;
    server_name mylta.it16.com www.mylta.it16.com;

    return 404;
}
```
Perlu atur konfigurasi lagi buat mengaktifkan seperti ini
```
service apache2 stop

rm /etc/nginx/sites-enabled/lb-jarkom
cp lb-jarkom-port /etc/nginx/sites-available/lb-jarkom-port

ln -s /etc/nginx/sites-available/lb-jarkom-port /etc/nginx/sites-enabled/lb-jarkom-port

service nginx restart
```
test pake ini  lynx mylta.it16.com:14000 dan lynx mylta.it16.com:14400

### Soal 18
Apa bila ada yang mencoba mengakses IP mylta akan secara otomatis dialihkan ke www.mylta.xxx.com

### Soal 19
Karena probset sudah kehabisan ide masuk ke salah satu worker buatkan akses direktori listing yang mengarah ke resource worker2

### Soal 20
Worker tersebut harus dapat di akses dengan tamat.xxx.com dengan alias www.tamat.xxx.com


