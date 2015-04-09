<?php
session_start();

include "koneksi.php";

$user  =$HTTP_POST_VARS['user'];
$pass  =$HTTP_POST_VARS['pwd'];
$waktu=date("Y-m-d H:i:s");
if(isset($user))
	{
	$username=htmlentities((trim($user)));
	$password=htmlentities(md5($pass));
	
	$login=mysql_query("select * from tb_user where username='$username' and password='$password' and status='1'");
	$cek_login=mysql_num_rows($login);
	
	if (empty($cek_login))
	{
		?><script language="JavaScript">
				alert('Login yang Anda masukkan salah atau Akun Anda tidak aktif');
				document.location='index.php';
				</script><? /// ini peringatan salah password dan menuju ke index.
	}else{
	
		//daftarkan ID jika user dan password BENAR
		while ($data=mysql_fetch_array($login))
		{
   		    $_SESSION['level'] = $data['level'];
		    $_SESSION['username'] = $data['username'];
			
		}
		
		?><script language="javascript">document.location.href="mu.php";</script><?php 
	}
	

}else{
	unset($_POST['username']);
}
?>