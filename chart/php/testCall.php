<?php
	$results = $_POST;
	
	if(isset($_POST['searchPatients'])){
				$results = array("some test patient");
				//print json_encode($results,JSON_FORCE_OBJECT);
			
		}
	print json_encode($results,JSON_FORCE_OBJECT);

?>