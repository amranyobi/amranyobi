<?php
function dedi($x,$y)
{
	$ambil_buku = mysql_query("SELECT a.nama from tb_coa AS a, tb_dedi AS b, tb_jenis_transaksi AS c where c.id=b.jenis_trans AND b.buku=a.nomor AND b.jenis_trans='$x' AND b.tipe='$y' order by a.id asc");
	$hitung = mysql_num_rows($ambil_buku);
	while ($buku = mysql_fetch_assoc($ambil_buku))
	{
	$tak++;
	echo $buku['nama'];
	if ($tak<$hitung)
	echo ", ";
	}
}
?>