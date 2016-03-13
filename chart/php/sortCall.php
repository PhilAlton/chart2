<?php
	$currentPage = getCurrentPage();
	
	switch($currentPage){
		case "controller.php":
			$action = $_POST['action'];
			switch($action){
				case "login":
					atemptLogin($_POST['username'], $_POST['password']);
					break;
				case "selectPatient":
					
					break;
				case "addObs":
					addObs($_POST);
					break;
				default:
					break;
			}
			
			break;
		case "login.php":
			//importJs();
			if(checkLoginStatus()){
			//	loadPage();
			}
			break;
		default:
			importJs();
			if(checkLoginStatus()){
				$session = new session(getSessionId());
				$sessionData = $session->_read($session->id);
				$currentPage = getCurrentPage();
				switch($currentPage){
					case "obsChart.php":
						
						break;
					case "obsEntryForm.php":
						
						break;
				}
			}
			break;
	}




?>