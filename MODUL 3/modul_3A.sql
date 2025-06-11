-- Nama : wiwin arningsih 
-- Nim  : 23241099
-- Kelas: pti/C 
-- Modul: modul 3 ORDER BY, fungsi Agregasi, GROUP BY, HAVING

-- menggunakan database
use pti_mart;

-- ORDER BY
-- Mengurutkan data dari sebuah fieldy/kolom atau hasil oleh kolom
-- praktek 1
-- ambil nama produk dan qty dari tb penjualan urutan qty

SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty; -- urut dari kecil kebesar

-- praktek 2
-- ambil nama produk, qty dari tb penjualan urutan qty dan nama produk 
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty, nama_produk; 

-- latihan mandiri 
-- tambilkan semua kolom dari table tr penjualan dengan mengurutkan berdasarkan qty dan tgl_transaksi
SELECT * from tr_penjualan order by qty, tgl_transaksi;

-- tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan nama_pelanggan
SELECT * from ms_pelanggan order by nama_pelanggan;
-- tambilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan alamat
SELECT * from ms_pelanggan order by alamat;

-- praktek 3
-- ambil nama produk, qty dari tb penjualan urut qty besar ke kecil
SELECT nama_produk, qty from tr_penjualan ORDER BY qty DESC;

-- praktek 4
-- ambil nama produk, qty dari tb penjualan urut qty desc, namaproduk asc
SELECT nama_produk,qty from tr_penjualan_dqlap;

-- latihan mandiri 
-- tampilkan semua kolom dari table tr_penjualan_dqlap dengan mengurutkan berdasarkan tgl_transaksi secara descending dan qty secara ascending
select * from tr_penjualan order by tgl_transaksi desc, qty asc;
-- tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan nama_pelanggan secara descending
select * from ms_pelanggan order by nama_pelanggan desc;
-- tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan alamat secara descending
select * from ms_pelanggan order by alamat desc;

-- praktek 5
-- menggunakan ORDER BY dari hasil perhitungan kolom 
-- ambil nama produk, qty, harga dan perkalian qty*harga, urut qty* 
select nama_produk, qty, harga, qty*harga as total from tr_penjualan order by total desc;

 

 