SELECT tp.id_post,judul,konten,gambar,tc.nama as "Kategori", tpn.nama as "Penulis", tpn.foto, tpn.deskripsi FROM `tb_post` as tp 
join tb_category as tc on tp.category=tc.id_category
join tb_penulis as tpn on tp.id_post=tpn.id_penulis
ORDER BY tp.tgl_posting;