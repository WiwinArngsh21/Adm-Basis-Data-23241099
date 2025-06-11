-- Nama		: wiwin arningsih
-- NIM		: 23241099
-- Kelas	: C
-- Modul	: Modul 3B

-- Where(filtering) dan Order BY
-- Mengurutkan hasil filtering dari sebuah query
-- Praktek 6
-- ambil nama produk dan qty untuk produk yang berawalan F urut qty dari besar ke kecil
select nama_produk, qty from tr_penjualan where nama_produk like 'F%' order by qty desc;

-- Fungsi Agregasi
-- digunakan untuk mengolah beberapa baris dalam data
-- Praktek 7
-- menghitung jumlah(SUM) qty terjual pada penjualan
select qty from tr_penjualan;
select SUM(qty) from tr_penjualan; -- ada 42 produk yang terjual

-- Praktek 8
-- Hitung semua transaksi yang terjadi pada tr penjualan
select count(*) from tr_penjualan;

-- Praktek 9
-- Hitung qty terjual dan hitung transaksi yang terjadi
select sum(qty), count(*) from tr_penjualan;

-- Praktek 10
-- hitung rata-rata qty terjual per transaksi AVG()
-- hitung qty terbanyak terjual per transaksi MAX()
-- hitung qty paling sedikit terjual per transaksi min()
select avg(qty), max(qty), min(qty) from tr_penjualan;

-- COUNT(DISTINCT) / hanya menampilkan angka
-- digunakan untuk menghitung nilai unik terdapat pada sebuah kolom
-- Praktek 11
select count(nama_produk) from tr_penjualan; -- ada 15
select count(distinct nama_produk) from tr_penjualan; -- ada 10 produk

-- Praktek 12
select count(nama_produk), count(distinct nama_produk) from tr_penjualan;

-- Praktek 13
-- Ambil nama produk dan hitung nilai max (terbanyak) dari qty
select nama_produk, max(qty) from tr_penjualan;

-- Group BY 
-- (mengelompokkan isi data dari satu atau bnyk kolom) / untuk menampilkan semua nama produk pada agregasi(perhitungan)
-- biasanya digabung dengan fungsi agregasi
-- Praktek 14
-- menampilkan nama produk dari hasil pengelompokan berdasarkan nama produk
select nama_produk, max(qty) from tr_penjualan group by nama_produk;

-- Praktek 15
-- menampilkan nama produk dan qty dari hasil kelompok nama produk dan qty
select nama_produk, qty from tr_penjualan group by nama_produk, qty;

-- Praktek 16
-- tampilkan semua produk dan total qty terjual
select nama_produk, sum(qty) from tr_penjualan group by nama_produk;

-- Praktek 17
-- tampilkan semua produk dan total qty terjual urut dari qty terbanyak
select nama_produk, sum(qty) from tr_penjualan group by nama_produk order by sum(qty) desc;

-- Having
-- untuk filtering dari hasil fungsi agregasi dan group by
-- Praktek 18
-- ambil nama produk yang total qty terjualnya diatas 2
select nama_produk, sum(qty) from tr_penjualan group by nama_produk having sum(qty) > 2 order by sum(qty) desc;

use ptic_mart;

-- latihan mandiri 1
-- a. tampilkan semua kolom dari table tr penjualan dengan mengurutkan berdasarkan qty dan tgl_transaksi
select * from tr_penjualan order by qty, tgl_transaksi;

-- b. tampilkan semua kolom dari table ms pelanggan dengan mengurutkan berdasarkan nama_pelanggan
select * from ms_pelanggan order by nama_pelanggan;

-- c. tampilkan semua kolom dari table ms pelanggan dengan mengurutkan berdasarkan alamat
select * from ms_pelanggan order by alamat;

-- Latihan mandiri 2
-- a. tampilkan semua kolom dari table tr penjualan dengan mengurutkan berdasarkan tgl transaksi secara DESC dan qty secara ASC
select * from tr_penjualan order by tgl_transaksi desc, qty asc;

-- b. tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan nama pelanggan secara DESC
select * from ms_pelanggan order by nama_pelanggan desc;

-- c. tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan alamat secara DESC
select * from ms_pelanggan order by alamat desc;

-- Latihan mandiri 3
-- Pengurutan dengan ekspresi total harga menggunakan rumusan jumlah barang dikali harga barang dikurangi diskon
select nama_produk, qty, harga, diskon_persen, (qty * harga - diskon_persen) as total_harga from tr_penjualan order by total_harga desc;

-- Latihan mandiri 4
-- a. tampilkan semua kolom dari transaksi yang ada diskon dan urut dari harga tertinggi
select * from tr_penjualan where diskon_persen>0 order by harga desc;

-- b. tampilkan kolom nama produk, qty, dan harga dari transaksi penjualan yang memiliki harga minimal 100k dan diurutkan berdasarkan harga tertinggi
select nama_produk, qty, harga from tr_penjualan where harga>=100000 order by harga desc;

-- c. tampilkan kolom nama produk, qty, harga dari tabel transaksi. harga minimal 100k atau nama produk berawalan karakter T dan urut dari diskon tertinggi
select nama_produk, qty, harga from tr_penjualan where harga>=100000 or nama_produk like 'T%' order by diskon_persen desc;

-- Latihan mandiri 5
-- a. melihat daftar nama produk yang total jumlah produk terjual per kelompok nama produk adalah di atas nilai 4
select nama_produk from tr_penjualan group by nama_produk having sum(qty)>4;

-- b. melihat daftar nama produk yang total jumlah produk terjual per kelompok harus produk sama dengan 9
select nama_produk from tr_penjualan group by nama_produk having sum(qty)=9;

-- c. melihat daftar kelompok nama produk dan total nilai penjualan (harga dikali jumlah, dikurangi diskon) dengan dan urutan berdasarkan nilai penjualan terbesar;
select nama_produk, sum(harga*qty-diskon_persen) as nilai_penjualan from tr_penjualan group by nama_produk order by nilai_penjualan desc;
