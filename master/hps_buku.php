<? ob_start(); ?>
<?php
	include "koneksi.php";
	$id		 = $_GET['id'];

	$sql = "DELETE FROM tb_coa WHERE id = '$id'";
	$hasil = mysql_query($sql, $id_mysql);
	
	header( 'Location:home.php?hal=master/hasil_buku' ) ;
?>
<? ob_flush(); ?>