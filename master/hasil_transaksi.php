<head>
<style>
.form-checkbox
{
  float:left;
  width: 220px;
  height: 40px;
}
</style>
<script src="libs/jquery.min.js"></script>
		<script src="libs/jquery.multiple.select.js"></script>
		<link rel="stylesheet" href="libs/multiple-select.css"/>
		<script>
			$(document).ready(function(){
				$('#debet').multipleSelect({
					placeholder: "Pilih Buku",
					filter:true
				});
			});
			
			$(document).ready(function(){
				$('#kredit').multipleSelect({
					placeholder: "Pilih Buku",
					filter:true
				});
			});
		</script>

<link rel="stylesheet" type="text/css" href="datatables/media/css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="datatables/resources/syntax/shCore.css">
<link rel="stylesheet" type="text/css" href="datatables/resources/demo.css">
<style type="text/css" class="init"></style>
<script type="text/javascript" language="javascript" src="datatables/media/js/jquery.dataTables.js"></script>
<script type="text/javascript" language="javascript" src="datatables/resources/syntax/shCore.js"></script>
<script type="text/javascript" language="javascript" src="datatables/resources/demo.js"></script>
<script type="text/javascript" language="javascript" class="init">

$(document).ready(function() {
	$('#example').dataTable( {
		"order": [[ 0, "asc" ]]
	} );
} );

</script>


</head>
<?php
$id = $_GET['id'];
include "koneksi.php";
include "fungsi_dedi.php";
$gol = mysql_query("SELECT * from tb_jenis_transaksi order by id asc");
$gol2 = mysql_query("SELECT * from tb_jenis_transaksi where id='$id'");
?>
<table width="635" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><h2 class="ico_mug">Master Transaksi</h2></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0" id="example" class="display">
        <thead>
        <tr>
          <td width="5">No</td>
          <td width="100">Nama</td>
          <td width="200">Pengaturan</td>
          <td width="10">Aksi</td>
        </tr>
        </thead>
        <?
		$nomor = 0;
		while ($ambil = mysql_fetch_assoc($gol))
		{
		$nomor++;
		?>
        <tr>
          <td>&nbsp;&nbsp;&nbsp;<?php echo $nomor?></td>
          <td><span class="table_date"><? echo $ambil['nama'];?></span></td>
          <td><span class="table_title"><b>D :</b> <span class="table_date">
            <? dedi($ambil['id'],1);?>
          </span><br /><b>K :</b> <span class="table_date">
          <? dedi($ambil['id'],2);?>
          </span></span></td>
          <td><div align="center">
          <?php
          $cari_aplikasi = mysql_query("SELECT * from tb_transaksi where transaksi='$ambil[id]'");
		  $hitung = mysql_num_rows($cari_aplikasi);
		  if ($hitung=='0')
		  {
		  ?>
          <a onclick="return confirm('Anda yakin akan menghapus ?'); if (ok) return true; else return false" href="home.php?hal=master/hps_jenis_trans&amp;id=<? echo $ambil['id'];?>"><img src="img/cancel.jpg" alt="cancel"/></a>&nbsp;&nbsp;
          <?php
		  }
		  ?>
          <!--<a href="home.php?hal=master/hasil_buku&id=<? //echo $ambil['id'];?>"><img src="img/edit.jpg" alt="edit" border="0"/></a>--></div></td>
        </tr>
        <?php
		}
		?>
      </table>
    <p>&nbsp;</p></td>
  </tr>
  <tr>
    <td></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>
	<?
		$ambil2 = mysql_fetch_assoc($gol2);
	?>
	
	<form name="form1" method="post" enctype="multipart/form-data" action="home.php?hal=master/simpan_transaksi">
	<?
	if ($id != '')
	{
	?>
	<input type="hidden" size="50" name="id" maxlength="50" value="<? echo $id;?>">
	<?
	}
	?>
			<fieldset>
				<legend><span>Tambah Master Transaksi</span></legend>
				  <br />
		  	  <label></label>
		  	  <label>Nama
		  	    <input type="text" size="30" name="nama" autocomplete="off"/></label><br />
              Debet<br /><?php
                $ambil_buku = mysql_query("SELECT * from tb_coa order by id");
				$nama = array();
				while($buku = mysql_fetch_array($ambil_buku))
				{
					$arr [ $buku['nomor'] ] = $buku['nama'];
				}
				?>
                <select name="debet[]" id="debet" multiple="multiple" style="width:300px">
                <?php
				foreach($arr as $kode=>$nama) {
				echo "<option value='$kode'>$nama</option>";
				}
				?>
                </select>
                <br /><br />
                Kredit<br /><?php
                $ambil_buku2 = mysql_query("SELECT * from tb_coa order by id");
				$nama2 = array();
				while($buku2 = mysql_fetch_array($ambil_buku2))
				{
					$arr2 [ $buku2['nomor'] ] = $buku2['nama'];
				}
				?>
                <select name="kredit[]" id="kredit" multiple="multiple" style="width:300px">
                <?php
				foreach($arr2 as $kode2=>$nama2) {
				echo "<option value='$kode2'>$nama2</option>";
				}
				?>
                </select>
                <br /><br />
			  <input type="submit" value="Tambah" />
 		</fieldset>
		</form>	</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
