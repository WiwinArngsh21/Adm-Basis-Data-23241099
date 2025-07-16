
-- nama: wiwin arningsih 
-- nim : 23241099
-- kelas: pti/c 

-- soal 1
/*munculkan kode pelanggan, nama produk, kuantitinya harga dan total dari semua produk 
yang pernah transaksinya, namun output yang diminta 200.000 dan di urutkan berdasarkan total harga 
terkecil

-- soal 2
tampilkan nama produk, kategori dan harga dari semua produk yang tidak pernah terjual

-- soal 3
munculkan kode pelanggan, nama pelanggan, alamat, dan nilai transaksi dari pelanggan yang paling tinggi 
transaksinya.


jawab soal 1*/
select tp.kode_pelanggan, tp.nama_produk, tp.qty, tp.harga, (tp.qty * tp.harga) as total_harga
from tr_penjualan as tp
where (tp.qty * tp.harga) >= 200000
order by total_harga asc;


-- soal 2
select tp.kode_pelanggan, mp.nama_pelanggan, mp.alamat, max(tp.qty * tp.harga) as total_harga from tr_penjualan as tp join ms_pelanggan as mp on tp.kode_pelanggan = mp.kode_pelanggan group by tp.kode_pelanggan
order by total_harga desc;

-- soal 3
select tp.kode_pelanggan, mp.nama_pelanggan, mp.alamat, max(tp.qty * tp.harga) as total_harga from tr_penjualan as tp join ms_pelanggan as mp on tp.kode_pelanggan = mp.kode_pelanggan group by tp.kode_pelanggan
order by total_harga desc;
select nama_pelanggan from ms_pelanggan;








