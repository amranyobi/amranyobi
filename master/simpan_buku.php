<? ob_start(); ?>
<?php
	include "koneksi.php";
	$id = $_POST ['id'];
	$nama = $_POST['nama'];
	$kla = $_POST['klarifikasi'];
	$modal = $_POST['modal'];
	$nomor = $_POST['nomor'];
	$jenis_modal = $_POST['jenis_modal'];
	$panjang = strlen($nomor);
	$potong = $panjang - 3;
	$parent = substr($nomor,0,$potong);
	
	//buat tingkat
	if ($panjang=='3')
	$tingkat = 1;
	else if ($panjang=='6')
	$tingkat = 2;
	else if ($panjang=='9')
	$tingkat = 3;
	else if ($panjang=='12')
	$tingkat = 4;
	
	if ($id == '')
		{
		$query = "INSERT INTO tb_coa VALUES('','$nomor','$nama','$parent','$tingkat','$kla','$modal','$jenis_modal')";
		$sql = mysql_query ($query) or die (mysql_error()); 
		}
		else
		{
		$query = "update tb_coa SET nomor='$nomor', nama='$nama', parent='$parent', tingkat='$tingkat', klarifikasi='$kla', modal='$modal', tipe='$jenis_modal' WHERE id='$id'";
		$sql = mysql_query ($query) or die (mysql_error());
		}
	
	header( 'Location:home.php?hal=master/hasil_buku' ) ;
?>
<? ob_flush(); ?>