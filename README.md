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

### Soal 13

