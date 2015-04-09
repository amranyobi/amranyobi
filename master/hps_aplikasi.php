<? ob_start(); ?>
<?php
	include "koneksi.php";
	$id		 = $_GET['id'];
	$jenis_trans = $_GET['jenis_trans'];
	$tahun = $_GET['tahun'];
	$bulan = $_GET['bulan'];

	$sql = "DELETE FROM tb_transaksi WHERE id = '$id'";
	$hasil = mysql_query($sql, $id_mysql);
	
	header( 'Location:home.php?hal=master/hasil_aplikasi&jenis_trans='.$jenis_trans.'&tahun='.$tahun.'&bulan='.$bulan.'' ) ;
?>
<? ob_flush(); ?>