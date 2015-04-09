<?php
function balik_tanggal($x)
	{
		$tgl1_hr = substr($x,0,2);
		$tgl1_bln = substr($x,3,2);
		$tgl1_thn = substr($x,6,4);
		$tgl1_br = $tgl1_thn."-".$tgl1_bln."-".$tgl1_hr;
		return $tgl1_br;
	}

function bolak_tanggal($y)
{
		$a_beli_hr = substr($y,8,2);
		$a_beli_bln = substr($y,5,2);
		$a_beli_thn = substr($y,0,4);
		$a_beli_br = $a_beli_hr."-".$a_beli_bln."-".$a_beli_thn;
		return $a_beli_br;
}

?>