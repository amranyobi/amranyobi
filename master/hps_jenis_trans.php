<? ob_start(); ?>
<?php
	include "koneksi.php";
	$id		 = $_GET['id'];

	$sql = "DELETE FROM tb_jenis_transaksi WHERE id = '$id'";
	$hasil = mysql_query($sql, $id_mysql);
	
	$sql2 = "DELETE FROM tb_dedi WHERE jenis_trans = '$id'";
	$hasil2 = mysql_query($sql2, $id_mysql);
	
	header( 'Location:home.php?hal=master/hasil_transaksi' ) ;
?>
<? ob_flush(); ?>