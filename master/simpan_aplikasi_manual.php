<? ob_start(); ?>
<?php
	include "koneksi.php";
	include "fungsi_tanggal.php";
	$id = $_POST ['id'];
	$transaksi_m = $_POST['transaksi_m'];
	$tanggal = balik_tanggal($_POST['tanggal']);
	$bulan = substr($tanggal,5,2);
	$tahun = substr($tanggal,0,4);
	$keterangan = $_POST['keterangan'];
	$nominal = $_POST['nominal'];
	$coa_debet = $_POST['coa_debet'];
	$coa_kredit = $_POST['coa_kredit'];
	$jenis_trans = $_POST['jenis_trans'];
	
	if ($keterangan=='' || $nominal=='')
	{
	?>
		<script language="JavaScript">
		alert('Isian yang Anda masukkan belum lengkap');
		history.back();
		</script>
	<?php
	}else{
	
	//urutkan
	$ambil_urut = mysql_query("SELECT urut from tb_transaksi where Year(tgl)='$tahun' AND Month(tgl)='$bulan' AND tipe='2' order by urut desc");
	$urut = mysql_fetch_assoc($ambil_urut);
	if ($urut['urut']=='')
	$urutan = "0";
	else
	$urutan = $urut['urut'];
	$lanjut = $urutan + 1;
	
	if ($id == '')
		{
		$query = "INSERT INTO tb_transaksi VALUES('','0','$tanggal','$keterangan','$nominal','$lanjut','2','$transaksi_m','$coa_debet','$coa_kredit')";
		$sql = mysql_query ($query) or die (mysql_error()); 
		}
		else
		{
		$query = "update tb_transaksi SET tgl='$tanggal', keterangan='$keterangan', nominal='$nominal', transaksi_m='$transaksi_m', b_debet='$coa_debet', b_kredit='$coa_kredit' WHERE id='$id'";
		$sql = mysql_query ($query) or die (mysql_error());
		}
	
	header( 'Location:home.php?hal=master/hasil_aplikasi_manual&bulan='.$bulan.'&tahun='.$tahun.'' );
	}
?>
<? ob_flush(); ?>