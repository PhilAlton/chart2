<script src="../importedLibraries/jquery-1.11.2.min.js"></script>
<script src="../js/graph.js"></script>

<?php

	require("sortObsData.php");
	require("DataAnalysis.php");
	require("session.php");
	require("database.php");
	require("testData.php");
	require("obsChartClass.php");
	require("patient.php");
	require("tableClass.php");

	define("DB_HOST", "localhost");
	define("DB_USER", "User");
	define("DB_PASSWORD", "PcBDmjqAF9D8WrNG");
	define("DB_NAME", "chart001");
	
	// declaration of constants
	define("CELL_HEIGHT", 25);
	define("NUMBER_OF_CELL_COLUMNS", 12);
	
	// colour constants -- CHANGE NAME TO COLOUR_X etc.
	define("BG_RED", "ff9999");
	define("BG_ORANGE", "ffbb99");
	define("BG_GREEN", "ccffcc");
	define("BG_GREY", "bfbfbf");
	define("BG_WHITE", "ffffff");
	define("BG_BLUE", "ccddff");
	define("BG_DARK_BLUE", "3385ff");
	
	date_default_timezone_set("Europe/London"); 
	
	if(getCurrentPage()== "controller.php"){
		if(isset($_POST['login'])){
			if($_POST['login']){
				$username = $_POST['username'];
				$password = $_POST['password'];
				$login = validateLogin($username, $password);
				if($login){
					$session = new session();
					$sessionData = array();
					$sessionData['lock'] = $username;
					$sessionData['key'] = $password;
					$sessionData['patId'] = '000000000'; ///////////////////Test patient
					$session->_write($session->id, $sessionData);
					loadDefaultPage($session->id);
				}else{
					header("location:login.php?login=invalid");
				}
			}
		}else if(isset($_POST['addObs'])){
				$obsSet = getObsSetArray();

				$timestamp = strtotime("now");
				$obsSet["date"] = date("d/m/Y", $timestamp);
				$obsSet["time"] = date("H:i", $timestamp);
				$obsSet["respRate"] = $_POST["respiratoryRate"];
				$obsSet["spO2"] =$_POST["spO2"];
				$obsSet["inspiredO2"] = $_POST["o2Flow"]."L";
				$obsSet["temp"] =$_POST["temperature"];
				$obsSet["sistBP"] =$_POST["bloodPressureSystolic"];
				$obsSet["diastBP"] =$_POST["bloodPressureDiastolic"];
				$obsSet["heartRate"] =$_POST["heartRate"];
				$obsSet["AVPU"] ="A";//$_POST[];
				$obsSet["bloodSugar"] ="";//$_POST[];
				$obsSet["totalScore"] ="";
				$obsSet["painScore"] ="";
				$obsSet["urineOutput"] ="";//$_POST[];
				$obsSet["frequency"] ="";//$_POST[];
				$obsSet["escPlan"] ="";//$_POST[];
				$obsSet["initial"] ="";//$_POST[];
				$obsSet["O2Route"] ="";
				
				$patient = new Patient($_POST['addObs']);
				$patient->addObsSet($obsSet);
				
				loadDefaultPage($_POST['chsi']);
				
		}
	}else if(getCurrentPage()== "login.php"){
		if(isset($_GET["chsi"])){
			loadDefaultPage($_GET["chsi"]);
		}
	}else{
		if(isset($_GET["chsi"])){
			//$session = new session("4910b4p8d4bq10gfsn80v0vvn2");
			$session = new session($_GET["chsi"]);
			$sessionData = $session->_read($session->id);
			if(getCurrentPage()== "obsChart.php"){
				if(!$sessionData->patId){
					//navigate to patient selection page
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
				
				$tableParamsArray = $obsChart->getTableParams();
				//echo count($tableParamsArray[0]['dataLeft']['date'])." \n ".count($tableParamsArray[0]['dataLeft']['spO2']);
				//var_dump($tableParamsArray[1]['dataLeft']);	
				
				$tableParamsArray = json_encode($tableParamsArray,JSON_FORCE_OBJECT);
				$tableIds = json_encode($obsChart->getTableIds(),JSON_FORCE_OBJECT);
			}else if(getCurrentPage()== "obsEntryForm.php"){
				$patient = new Patient($sessionData->patId);
				$sessionId = $_GET["chsi"];
				$cancelRedirect = "obsChart.php?chsi=".$sessionId;
				
			}
		}else{
			header("location:login.php");
		}
		
		
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
	

	function loadDefaultPage($sessionId = false){
		$defaultPage = "obsChart.php";
		if(!$sessionId){
			header("location:".$defaultPage);
		}else{
			header("location:".$defaultPage."?chsi=".$sessionId);
		}
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
	

	
	

?>