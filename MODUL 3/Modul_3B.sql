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

