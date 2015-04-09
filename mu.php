<?php
 
session_start();
 
if ($_SESSION['level'] == "1")
{
   include "ahome.php";  
}


else if ($_SESSION['level'] == "2")
{
   include "khome.php";
}
else
{
   include "index.php";
}

?>