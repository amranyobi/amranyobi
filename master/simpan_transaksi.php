<? ob_start(); ?>
<?php
	$nama = $_POST['nama'];
	//masukkan dulu
	$masukkan = mysql_query("INSERT INTO tb_jenis_transaksi VALUES ('','$nama')");
	
	//ambil terakhir
	$ambil = mysql_query("SELECT id from tb_jenis_transaksi order by id desc");
	$hasil = mysql_fetch_assoc($ambil);
	$id_akhir = $hasil['id'];
	
	include "koneksi.php";
	if ($_POST['debet']!='')
	{
		foreach($_POST['debet'] as $datasatu=>$value) {
		$value2 = $_POST['debet'][$datasatu];
		$input = mysql_query("INSERT INTO tb_dedi VALUES ('','$id_akhir','$value2','1')");
		}
	}
	
	if ($_POST['kredit']!='')
	{
		foreach($_POST['kredit'] as $datasatux=>$valuex) {
		$value3 = $_POST['kredit'][$datasatux];
		$input2 = mysql_query("INSERT INTO tb_dedi VALUES ('','$id_akhir','$value3','2')");
		}
	}
	
	header( 'Location:home.php?hal=master/hasil_transaksi' ) ;
?>
<? ob_flush(); ?>