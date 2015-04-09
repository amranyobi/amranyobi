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
		"order": [[ 0, "asc" ]]
	} );
} );

</script>
</head>
<?php
$id = $_GET['id'];
include "koneksi.php";
$gol = mysql_query("SELECT * from tb_coa order by nomor asc");
$gol2 = mysql_query("SELECT * from tb_coa where id='$id'");
?>
<table width="635" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><h2 class="ico_mug">Master COA</h2></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0" id="example" class="display">
      <thead>
        <tr>
          <th width="50">Nomor</th>
          <th width="200">Nama Buku</th>
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
          <td class="table_date"><? echo $ambil['nomor'];?></td>
          <td class="table_title"><span class="table_date"><?
          if ($ambil['tingkat']=='2')
		  echo "&nbsp;&nbsp;- ";
		  if ($ambil['tingkat']=='3')
		  echo "&nbsp;&nbsp;&nbsp;&nbsp;- ";
		  if ($ambil['tingkat']=='4')
		  echo "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- ";
		  if ($ambil['tingkat']=='1')
		  echo "<b>";
		  echo $ambil['nama'];
		  if ($ambil['tingkat']=='1')
		  echo "</b>";
		  ?></span></td>
          <td><div align="center">
          <?php
          $cari_buku = mysql_query("SELECT buku from tb_dedi where buku='$ambil[nomor]'");
		  $hitung = mysql_num_rows($cari_buku);
		  if ($hitung=='0')
		  {
		  ?>
          <a onclick="return confirm('Anda yakin akan menghapus ?'); if (ok) return true; else return false" href="home.php?hal=master/hps_buku&amp;id=<? echo $ambil['id'];?>"><img src="img/cancel.jpg" alt="cancel"/></a>&nbsp;&nbsp;
          <?php
		  }
		  ?>
          <a href="home.php?hal=master/hasil_buku&id=<? echo $ambil['id'];?>"><img src="img/edit.jpg" alt="edit" border="0"/></a></div></td>
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
	<?
		$ambil2 = mysql_fetch_assoc($gol2);
	?>
	
	<form name="form1" method="post" enctype="multipart/form-data" action="home.php?hal=master/simpan_buku">
	<?
	if ($id != '')
	{
	?>
	<input type="hidden" size="50" name="id" maxlength="50" value="<? echo $id;?>">
	<?
	}
	?>
			<fieldset>
				<legend><span>
				<?
				if ($id == '')
				echo "Tambah";
				else
				echo "Edit";
				?>
				COA</span></legend>
				  <br />
		  	  <label></label>
		  	  <label>Nomor
		  	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="15" name="nomor" autocomplete="off"
			  <?
			  if ($id != '')
			  {
			  ?>
			  value="<? echo $ambil2['nomor'];?>"
			  <?
			  }
			  ?>
			  /></label>
              <label>COA
		  	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="50" name="nama" autocomplete="off"
			  <?
			  if ($id != '')
			  {
			  ?>
			  value="<? echo $ambil2['nama'];?>"
			  <?
			  }
			  ?>
			  /></label>
              <label>Klarifikasi
		  	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="klarifikasi">
              <?php
              $ambil_klarifikasi = mysql_query("SELECT * from tb_klarifikasi order by id asc");
			  while ($kla = mysql_fetch_assoc($ambil_klarifikasi))
			  {
			  ?>
			  		<option value="<?php echo $kla['id']?>"
                    <?php
                    if ($kla['id']==$ambil2['klarifikasi'])
					{
					?>
                     	selected="selected"
					<?php
					}
					?>
                    ><?php echo $kla['nama']?></option>
			  <?php
			  }
			  ?>
              </select>
              </label> 				
			  <br />
			  <br />  
			  <input type="submit" value="<? if ($id == '')
				echo "Tambah";
				else
				echo "Edit";?>" />
		<?
		if ($id != '')
		{
		?>
		<a href="home.php?hal=master/hasil_buku">Batal</a>
		<?
		}?>
 		</fieldset>
		</form>	</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
