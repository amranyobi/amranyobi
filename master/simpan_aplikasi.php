<? ob_start(); ?>
<?php
	include "koneksi.php";
	include "fungsi_tanggal.php";
	$id = $_POST ['id'];
	$jenis_aplikasi = $_POST['jenis_aplikasi'];
	$tanggal = balik_tanggal($_POST['tanggal']);
	$bulan = substr($tanggal,5,2);
	$tahun = substr($tanggal,0,4);
	$keterangan = $_POST['keterangan'];
	$nominal = $_POST['nominal'];
	
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
	$ambil_urut = mysql_query("SELECT urut from tb_transaksi where Year(tgl)='$tahun' AND Month(tgl)='$bulan' AND transaksi='$jenis_aplikasi' order by urut desc");
	$urut = mysql_fetch_assoc($ambil_urut);
	if ($urut['urut']=='')
	$urutan = "0";
	else
	$urutan = $urut['urut'];
	$lanjut = $urutan + 1;
	
	if ($id == '')
		{
		$query = "INSERT INTO tb_transaksi VALUES('','$jenis_aplikasi','$tanggal','$keterangan','$nominal','$lanjut')";
		$sql = mysql_query ($query) or die (mysql_error()); 
		}
		else
		{
		$query = "update tb_transaksi SET tgl='$tanggal', keterangan='$keterangan', nominal='$nominal' WHERE id='$id'";
		$sql = mysql_query ($query) or die (mysql_error());
		}
	
	header( 'Location:home.php?hal=master/hasil_aplikasi&jenis_trans='.$jenis_aplikasi.'&bulan='.$bulan.'&tahun='.$tahun.'' );
	}
?>
<? ob_flush(); ?>