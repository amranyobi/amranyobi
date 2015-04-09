<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Login</title>
</head>

<body>
<div id="profile_info">
			<img src="img/avatar.jpg" id="avatar" alt="avatar" />
			<?php
				session_start();
				include "koneksi.php";
	$username=$_SESSION['username'];
	$lvlb=$_SESSION['level'];
	$nama=mysql_query("select k.nama, u.level from tb_user as u, tb_karyawan as k where u.username='$username' and u.nama=k.id and u.level='$lvlb'");
				while($baris=mysql_fetch_array($nama))
				{
					$nama1 = $baris['nama'];
					
				}

				if ($lvlb == "2")
				{
					$sbg = "Kasir";
					} else if ($lvlb == "1")					{
						$sbg = "Admin"; }

			?>
			<p>Selamat Datang<br><strong><? echo $nama1; ?></strong> as <? echo $sbg;?></p>
			<p><a href="./logout.php">Log out?</a></p>
		</div>
		<div id="logo"><h1><a href="/">Apotek Jatingaleh</a></h1></div>
</body>
</html>
