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
		"footerCallback": function ( row, data, start, end, display ) {
			var api = this.api(), data;

			// Remove the formatting to get integer data for summation
			var intVal = function ( i ) {
				return typeof i === 'string' ?
					i.replace(/[\Rp.,]/g, '')*1 :
					typeof i === 'number' ?
						i : 0;
			};

			// Total over all pages
			total = api
				.column( 3 )
				.data()
				.reduce( function (a, b) {
					return intVal(a) + intVal(b);
				} );

			// Update footer
			function format2(n) {
    		return n.toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,");}
			
			$( api.column( 3 ).footer() ).html(
				''+ format2(total) +''
			);
			
			
			// Remove the formatting to get integer data for summation
			var intVal2 = function ( i ) {
				return typeof i === 'string' ?
					i.replace(/[\Rp.,]/g, '')*1 :
					typeof i === 'number' ?
						i : 0;
			};

			// Total over all pages
			total2 = api
				.column( 2 )
				.data()
				.reduce( function (a, b) {
					return intVal2(a) + intVal2(b);
				} );

			// Update footer
			function format3(n) {
    		return n.toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,");}
			
			$( api.column( 2 ).footer() ).html(
				''+ format3(total2) +''
			);
			
		}
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
    <td><h2 class="ico_mug">Neraca Awal</h2></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><table id="example" class="display" cellspacing="0" width="100%">
      <thead>
        <tr>
          <th rowspan="2"><br />Nomor</th>
          <th rowspan="2"><br />Nama Buku</th>
          <th colspan="2">Modal Awal</th>
          </tr>
        <tr>
          <th>Debet</th>
          <th>Kredit</th>
        </tr>
      </thead>
      <tfoot>
        <tr>
          <th style="text-align:right">&nbsp;</th>
          <th style="text-align:right">&nbsp;</th>
          <th style="text-align:right">&nbsp;</th>
          <th></th>
        </tr>
      </tfoot>
      <tbody>
      <?
		$nomor = 0;
		while ($ambil = mysql_fetch_assoc($gol))
		{
		$nomor++;
		?>
        <tr>
          <td><? echo $ambil['nomor'];?></td>
          <td><span class="table_date">
            <?
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
		  ?>
          </span></td>
          <td><?
          if ($ambil['modal']!='0' && $ambil['tipe']=='1')
		  {
			  	
		  		echo number_format($ambil['modal']);
		  }?></td>
          <td><?
          if ($ambil['modal']!='0' && $ambil['tipe']=='2')
		  {
			  	
		  		echo number_format($ambil['modal']);
		  }?></td>
        </tr>
        <?
		}
		?>
      </tbody>
    </table></td>
  </tr>
  <tr>
    <td></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
