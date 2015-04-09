<?php
   $db = new mysqli('localhost', 'root' ,'mysql', 'adis');
	
	if(!$db) {
		echo 'Could not connect to the database.';
	} else {
	
		if(isset($_POST['queryString'])) {
			$queryString = $db->real_escape_string($_POST['queryString']);
			
			if(strlen($queryString) >0) {
				$query = $db->query("SELECT nm_obat,kd_obat FROM tb_obat WHERE nm_obat LIKE '$queryString%' or kd_obat LIKE '$queryString%'");
				
				if($query) {
				echo '<ul>';
					while ($result = $query ->fetch_object()) {
	         			echo '<li onClick="fill(\''.addslashes($result->nm_obat).'\'); fill2(\''.addslashes($result->kd_obat).'\');">'.$result->kd_obat.'&nbsp;&nbsp;'.$result->nm_obat.'</li>';
	         		}
				echo '</ul>';
					
				} else {
					echo 'OOPS we had a problem :(';
				}
			} else {
				// do nothing
			}
		} else {
			echo 'There should be no direct access to this script!';
		}
	}
?>