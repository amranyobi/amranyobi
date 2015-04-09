<head>
<link rel="stylesheet" type="text/css" href="datatables/media/css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="datatables/resources/syntax/shCore.css">
<link rel="stylesheet" type="text/css" href="datatables/resources/demo.css">
<style type="text/css" class="init"></style>
<script src="libs/jquery.min.js"></script>
<script type="text/javascript" language="javascript" src="datatables/media/js/jquery.dataTables.js"></script>
<script type="text/javascript" language="javascript" src="datatables/resources/syntax/shCore.js"></script>
<script type="text/javascript" language="javascript" src="datatables/resources/demo.js"></script>
<script type="text/javascript" language="javascript" class="init">

$(document).ready(function() {
	$('#example').dataTable( {
		"order": [[ 0, "desc" ]]
	} );
} );

</script>

<link type="text/css" href="transaksi/tanggal/jqueryui/css/smoothness/jquery-ui-1.8.6.custom.css" rel="Stylesheet" />	
	<script type="text/javascript" src="transaksi/tanggal/jqueryui/js/jquery-ui-1.8.6.custom.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
	
			$("#date9").datepicker({				
				dateFormat:"dd-mm-yy",
				numberOfMonths: 1				
			});
			
			$("#date8").datepicker({				
				dateFormat:"dd-mm-yy",
				numberOfMonths: 1				
			});
																			
		});
	</script>


</head>
<?php
$year = $_POST['tahun'];
if ($year=='')
$year = $_GET['tahun'];
if ($year=='')
$year = date("Y");
$month= $_POST['bulan'];
if ($month=='')
$month= $_GET['bulan'];
if ($month=='')
$month= date("m");
$jenis_trans = $_POST['jenis_trans'];
if ($jenis_trans=='')
$jenis_trans = $_GET['jenis_trans'];
$id = $_GET['id'];

include "koneksi.php";
include "fungsi_tanggal.php";
//transaksi awal
if ($jenis_trans=='')
{
	$ambil_trans = mysql_query("SELECT id from tb_jenis_transaksi order by id asc");
	$trans = mysql_fetch_assoc($ambil_trans);
	$jenis_trans = $trans['id'];
}

//query
$gol = mysql_query("SELECT * from tb_transaksi where transaksi='$jenis_trans' AND MONTH(tgl)='$month' AND YEAR(tgl)='$year' order by id desc");
$ambil_hasil = mysql_query("SELECT nama from tb_jenis_transaksi where id='$jenis_trans'");
$hasil = mysql_fetch_assoc($ambil_hasil);
?>
<table width="635" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><h2 class="ico_mug">Aplikasi Transaksi</h2></td>
  </tr>
  <tr>
    <td>
    <form action="" method="post">
    <select name="jenis_trans">
    <?php
    $ambil_jenis = mysql_query("SELECT * from tb_jenis_transaksi order by id");
	while($jenis = mysql_fetch_assoc($ambil_jenis))
	{
	?>
		<option value="<?php echo $jenis['id']?>"
        <?php
        if ($jenis['id']==$jenis_trans)
		{
		?>
		selected="selected"
		<?php
		}
		?>
        ><?php echo $jenis['nama']?></option>
	<?php
	}
	?>
    </select>&nbsp;
    <select name="bulan">
    <option value="01"
    <?php
    if ($month=='01')
	{
	?>
     selected="selected"
	<?php
	}
	?>
    >Januari</option>
      <option value="02"
    <?php
    if ($month=='02')
	{
	?>
     selected="selected"
	<?php
	}
	?>
    >Februari</option>
      <option value="03"
    <?php
    if ($month=='03')
	{
	?>
     selected="selected"
	<?php
	}
	?>
    >Maret</option>
      <option value="04"
    <?php
    if ($month=='04')
	{
	?>
     selected="selected"
	<?php
	}
	?>
    >April</option>
      <option value="05"
    <?php
    if ($month=='05')
	{
	?>
     selected="selected"
	<?php
	}
	?>
    >Mei</option>
      <option value="06"
    <?php
    if ($month=='06')
	{
	?>
     selected="selected"
	<?php
	}
	?>
    >Juni</option>
      <option value="07"
    <?php
    if ($month=='07')
	{
	?>
     selected="selected"
	<?php
	}
	?>
    >Juli</option>
      <option value="08"
    <?php
    if ($month=='08')
	{
	?>
     selected="selected"
	<?php
	}
	?>
    >Agustus</option>
      <option value="09"
    <?php
    if ($month=='09')
	{
	?>
     selected="selected"
	<?php
	}
	?>
    >September</option>
      <option value="10"
    <?php
    if ($month=='10')
	{
	?>
     selected="selected"
	<?php
	}
	?>
    >Oktober</option>
      <option value="11"
    <?php
    if ($month=='11')
	{
	?>
     selected="selected"
	<?php
	}
	?>
    >November</option>
      <option value="12"
    <?php
    if ($month=='12')
	{
	?>
     selected="selected"
	<?php
	}
	?>
    >Desember</option>
    </select>&nbsp;
    <select name="tahun">
      <?php
	$sekarang = date("Y");
	for ($x=2010;$x<=$sekarang;$x++)
	{
		?>
		<option value="<?php echo $x?>"
		<?php
		if ($year==$x)
		{
		?>
		selected="selected"
		<?php
		}
		?>
		><?php echo $x?></option>
		<?php
	}
	?>
    </select>&nbsp;
    <input type="submit" value="Lihat" />
    </form>
    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0" id="example" class="display">
      <thead>
        <tr>
          <th width="5">Nomor</th>
          <th width="50">Keterangan</th>
          <th width="20">Nominal</th>
          <th width="10">Tanggal</th>
          <th width="5" align="center" valign="top">Aksi</th>
        </tr>
      </thead>
	  	<?
		$nomor = 0;
		while ($ambil = mysql_fetch_assoc($gol))
		{
		$nomor++;
		?>
        <tr>
          <td class="table_date"><div align="center"><?
          if (strlen($ambil['urut'])==1)
		  echo "00";
		  if (strlen($ambil['urut'])==2)
		  echo "0";
		  echo $ambil['urut'];?></div></td>
          <td class="table_title"><span class="table_date"><?
		  echo $ambil['keterangan'];
		  ?></span></td>
          <td class="table_title"><div align="center"><? echo number_format($ambil['nominal']);?></div></td>
          <td class="table_title"><div align="center"><? echo bolak_tanggal($ambil['tgl']);?></div></td>
          <td><div align="center"><a onclick="return confirm('Anda yakin akan menghapus ?'); if (ok) return true; else return false" href="home.php?hal=master/hps_aplikasi&amp;id=<? echo $ambil['id'];?>&jenis_trans=<?php echo $jenis_trans?>&bulan=<?php echo $month?>&tahun=<?php echo $year?>"><img src="img/cancel.jpg" alt="cancel"/></a>&nbsp;&nbsp;<a href="home.php?hal=master/hasil_aplikasi&id=<? echo $ambil['id'];?>&jenis_trans=<?php echo $jenis_trans?>&bulan=<?php echo $month?>&tahun=<?php echo $year?>"><img src="img/edit.jpg" alt="edit" border="0"/></a></div></td>
        </tr>
      	<?
		}
		?>
    </table></td>
  </tr>
  <tr>
    <td></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>
    <?php
    //ambil edit
	$ambil_edit = mysql_query("SELECT * from tb_transaksi where id='$id'");
	$edit = mysql_fetch_assoc($ambil_edit);
	?>
	<form name="form1" method="post" enctype="multipart/form-data" action="home.php?hal=master/simpan_aplikasi">
	<?
	if ($id != '')
	{
	?>
	<input type="hidden" size="50" name="id" maxlength="50" value="<? echo $id;?>">
	<?
	}
	?><br /><br />
			<fieldset>
				<legend><span><?php
                if ($id=='')
				echo "Tambah ";
				else
				echo "Edit ";
				?>Transaksi</span></legend>
				  <br />
		  	  <label></label>
		  	  <label>Transaksi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $hasil['nama']?></label>
              <label>Tanggal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="tanggal" type="text" size="10" id="date9" value="<?
	  if ($id!='')
	  echo bolak_tanggal($edit['tgl']);
	  else
	  echo date("d-m-Y");
	  ?>
      " autocomplete="off"/></label> 		
      <label>Keterangan<input name="keterangan" type="text" size="50" autocomplete="off" value="<?php echo $edit['keterangan']?>"/></label>
      <label>Nominal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="nominal" type="text" size="10" autocomplete="off" value="<?php echo $edit['nominal']?>"/></label>			
			  <br />  
			  <input type="submit" value="<? if ($id == '')
				echo "Tambah";
				else
				echo "Edit";?>" />
		<?
		if ($id != '')
		{
		?>
		<a href="home.php?hal=master/hasil_aplikasi&jenis_trans=<?php echo $jenis_trans?>&bulan=<?php echo $month?>&tahun=<?php echo $year?>">Batal</a>
		<?
		}?>
 		</fieldset>
        <input name="jenis_aplikasi" value="<?php echo $jenis_trans?>" type="hidden" />
		</form>	</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
