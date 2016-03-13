<?php
	require("include.php");

	$currentPage = getCurrentPage();
	
	switch($currentPage){
		case "controller.php":
			
			if(isset($_POST['action'])){
				$action = $_POST['action'];
				switch($action){
					case "login":
						atemptLogin($_POST['username'], $_POST['password']);
						break;
					case "searchPatients":
						searchPatients($_POST);
						break;
					case "selectPatient":
						storePatientId($_POST["patId"]);
						break;
					case "addObs":
						addObs($_POST);
						loadObs("obsChart.php");
						break;
					default:
						break;
				}
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
						$json = initObsChartPage($session, $sessionData);
						break;
					case "obsEntryForm.php":
						$patient = initObsEntryFormPage($session, $sessionData);
						$sessionId = getSessionId();
						break;
				}
			}else{
				loadPage();
			}
			break;
	}

	
	function importJs(){
		echo '<script src="../importedLibraries/jquery-1.11.2.min.js"></script>';
		echo '<script src="../js/graph.js"></script>';
	}
	
	function checkLoginStatus(){
		$result = false;
		if(getSessionId()!= ""){
			$result = true;
		}
		return $result;
	}
	
	function getSessionId(){
		$result = "";
		if(isset($_GET["chsi"])){
			$result = $_GET["chsi"];
		}
		return $result;
	}
	
	function loadPage($page = "selectPatient.php", $sessionId = false){
		if($sessionId == false){
			if(checkLoginStatus()){
				$sessionId = getSessionId();
			}
		}
		if($sessionId == false){
			header("location:login.php");
		}else{
			header("location:".$page."?chsi=".$sessionId);
		}
	}
	
	
	function atemptLogin($username, $password){
		$login = validateLogin($username, $password);
		$result = false;
		if($login){
			$session = new session();
			$sessionData = array();
			$sessionData['lock'] = $username;
			$sessionData['key'] = $password;
			$sessionData['patId'] = '000000000'; ///////////////////Test patient
			$session->_write($session->id, $sessionData);
			$result=$session->id;
			//loadDefaultPage($session->id);
		}
		print json_encode($result);
	}
	
	function searchPatients($params){
		$db = new Database();
		$paramNum = 0;
		$query = 'SELECT * FROM `CH013` WHERE ';
		if($params["hosNum"] != ""){
			$query = $query."`Field01`='".$params["hosNum"]."'";
		}
		if($params["firstName"] != ""){
			if($paramNum > 0){
				$query = $query.' AND ';
				$paramNum++;
			}
			$query = $query."`Field05`='".$params["firstName"]."'";
			
			
		}
		if($params["lastName"] != ""){
			if($paramNum > 0){
				$query = $query.' AND ';
				$paramNum++;
			}
			$query = $query."`Field06`='".$params["lastName"]."'";
		}
		if($params["dob"] != ""){
			if($paramNum > 0){
				$query = $query.' AND ';
				$paramNum++;
			}
			$dob = date("Y-m-d", strtotime($params["dob"]));
			$query = $query."`Field04`='".$dob."'";
		}
		
		$db->query($query);
	
		// Attempt execution
		// If successful
		if($db->execute()){
			$results = $db->resultset();
			for($i=0;$i<count($results);$i++){
				$dob = date("d/m/Y", strtotime($results[$i]["Field04"]));
				$results[$i]["Field04"]=$dob;
			}
		}else{
			//echo 'Failed to add obs';
		}
		
		//$results = array($query);
		print json_encode($results,JSON_FORCE_OBJECT);
		
	}
	
	function storePatientId($patId){
		//echo "in";
		$session = new session(getSessionId());
		$sessionData = $session->_read($session->id);
		$sessionData->patId = $patId;
		$session->_write($session->id, $sessionData);
		print json_encode($session->id);
	}
	
	function addObs($obs){
		$obsSet = getObsSetArray();

		$timestamp = strtotime("now");
		$obsSet["date"] = date("d/m/Y", $timestamp);
		$obsSet["time"] = date("H:i", $timestamp);
		$obsSet["respRate"] = $obs["respiratoryRate"];
		$obsSet["spO2"] =$obs["spO2"];
		$obsSet["inspiredO2"] = $obs["o2Flow"]."L";
		$obsSet["temp"] =$obs["temperature"];
		$obsSet["sistBP"] =$obs["bloodPressureSystolic"];
		$obsSet["diastBP"] =$obs["bloodPressureDiastolic"];
		$obsSet["heartRate"] =$obs["heartRate"];
		$obsSet["AVPU"] ="A";//$obs[];
		$obsSet["bloodSugar"] ="";//$obs[];
		$obsSet["totalScore"] ="";
		$obsSet["painScore"] ="";
		$obsSet["urineOutput"] ="";//$obs[];
		$obsSet["frequency"] ="";//$obs[];
		$obsSet["escPlan"] ="";//$obs[];
		$obsSet["initial"] ="";//$obs[];
		$obsSet["O2Route"] ="";
		
		$patient = new Patient($obs['addObs']);
		$patient->addObsSet($obsSet);
		
		header("location:obsChart.php?chsi=".$obs['chsi']);
		

	}
	


	function validateLogin($username, $password){
		$valid = false;
		$db = new Database();
		// Set query
		$db->query('SELECT * FROM CH011 WHERE Field02 = :lock AND Field03 = :key');
		 
		// Bind data
		$db->bind(':lock', $username);
		$db->bind(':key', $password);
		 
		if($db->execute()){
			// Save returned row
			$row = $db->single();
			// Return the data
			if($row){
				$valid = true;
			}
		}else{
			$result = "ERROR 005";
		}
		
		return $valid;
	}
	

	
	
	
	function has_string_keys(array $array) {
	  return count(array_filter(array_keys($array), 'is_string')) > 0;
	}
	
	function getCurrentPage(){
		$uri = $_SERVER['REQUEST_URI'];
		$path = explode("/",$uri);
		$endDir = count($path) - 1;
		$currentPage = $path[$endDir];
		if (strpos($currentPage, '?') !== false) {
			$separateData = explode("?",$currentPage);
			$currentPage = $separateData[0];
		}
		return $currentPage;
	}

	function initObsChartPage($session, $sessionData){
		if(!$sessionData->patId){
			loadPage();
			exit;
		}

		$obsChart = new obsChart($sessionData->patId);
		//$obsChart = new obsChart('000000000');
		$obsChart->generateTables();
		
		///////Load test data into table//////////
		/*$data= getPatientTestData();
		$data = calculateObsScores($data);
		
		foreach($data as $row){
			$obsChart->patient->addObsSet($row);
		}
		*/
		/////////////////////////////////////////
		$json = array();
		$tableParamsArray = $obsChart->getTableParams();
		
		$json["tableParams"]= json_encode($tableParamsArray,JSON_FORCE_OBJECT);
		$json["tableIds"] = json_encode($obsChart->getTableIds(),JSON_FORCE_OBJECT);
		return $json;
	}

	function initObsEntryFormPage($session, $sessionData){
		$patient = new Patient($sessionData->patId);
		return $patient;
	}
	

?>