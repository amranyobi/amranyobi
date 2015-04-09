<?php
	
    $server   = "localhost"; 
    $pemakai  = "root";
    $password = "mysql"; 
	
    $tgl=date("Y m d");
	
	$title = "Megatama Accounting System";
	$footer = "Megatama Accounting System | Copyright &reg; 2015. All rights reserved";
	
    $id_mysql = mysql_connect($server, $pemakai, $password);
    $db  = mysql_select_db("sisak", $id_mysql);

?> 
