<?php

class Patient {
    
	private $currentPatient = true;
	private $tableName;
	private $database;
	
    public $hosNum;
    public $patNum;
    public $patName;
    public $dob;
    public $admitDate;
    public $ward;
    public $bed;
    public $obsData;
    
    public function __construct($patNum){
    	$this->patNum = $patNum;
        $this->database = new Database();

        $this->database->query('SELECT * FROM CH013 WHERE Field01 = :num');
        $this->database->bind(':num', $patNum);
        $row = $this->database->single();
        if($row){
        	$this->hosNum = $row['Field03'];
        	$this->patName = $row['Field05']." ".$row['Field06'];
            $this->dob = date("d/m/Y", strtotime($row['Field04']));
            
        	$this->database->query('SELECT * FROM CH012 WHERE Field02 = :num');
			$this->database->bind(':num', $row['Field01']);
			$row = $this->database->single();
			if($row){
				$this->tableName = $row['Field07'];
				$this->admitDate = date("d/m/Y", $row['Field03']);
				$this->ward = $row['Field04'];
				$this->bed = $row['Field05'];
				$this->getCurrentObsData();
            }else{
            	//insert new patient into current patient table
				$this->tableName = $this->createTableName();
				$this->addObsTable();
			}
        }else{
        	//insert new patient into all patients and current patients table
        	$this->tableName = $this->createTableName();
            $this->addObsTable();
        }
    }
    
    private function createTableName(){
    	$name = 'Test'.$this->hosNum;
    	return $name;
    }
   
    private function addObsTable(){

    	$createQuery = "CREATE TABLE ".$this->tableName."
						(
						`Field01` bigint(20) NOT NULL,
						`Field02` date NOT NULL, 
						`Field03` mediumint(20) NOT NULL, 
						`Field04` int, 
						`Field05` int, 
						`Field06` text, 
						`Field07` float(1), 
						`Field08` int, 
						`Field09` int, 
						`Field10` int, 
						`Field11` text, 
						`Field12` float(1), 
						`Field13` int, 
						`Field14` text, 
						`Field15` text, 
						`Field16` text, 
						`Field17` text, 
						`Field18` text,
						`Field19` int,
						PRIMARY KEY (`Field01`)
						)";
    	
    	$this->database->query($createQuery);
		
		// Attempt execution
		// If successful
		if($this->database->execute()){
			//echo 'Table added';
		}else{
			//echo 'Failed to add table';
		}
    }

    // retrieves any existing obs for a patient from archive
    private function retrieveArchive(){
        
    }
    
    // retrieves obs data
    public function getCurrentObsData(){
    	$selectQuery = 'SELECT * FROM '.$this->tableName;
        $this->database->query($selectQuery);
		
        if($this->database->execute()){
			//echo 'got obs data';
			$dataRows = $this->database->resultset();
			$sortedArr = array();
			foreach($dataRows as $row){
				array_push($sortedArr,$this->createObsArray($row));
			}
			$this->obsData = $sortedArr;
		}else{
			//echo 'Failed to get obs data';
		}
		
		
    }
    
    private function createObsArray($dataRow){
    	$obsSetArr = getObsSetArray();
    	
    	$obsSetArr["date"] = date("d/m/Y", strtotime($dataRow["Field02"]));
    	$obsSetArr["time"] = $dataRow["Field03"];
    	$obsSetArr["respRate"] = $dataRow["Field04"];
    	$obsSetArr["spO2"] = $dataRow["Field05"];
    	$obsSetArr["inspiredO2"] = $dataRow["Field06"];
    	$obsSetArr["temp"] = $dataRow["Field07"];
    	$obsSetArr["sistBP"] = $dataRow["Field08"];
    	$obsSetArr["diastBP"] = $dataRow["Field09"];
    	$obsSetArr["heartRate"] = $dataRow["Field10"];
    	$obsSetArr["AVPU"] = $dataRow["Field11"];
    	$obsSetArr["bloodSugar"] = $dataRow["Field12"];
    	$obsSetArr["painScore"] = $dataRow["Field13"];
    	$obsSetArr["urineOutput"] = $dataRow["Field14"];
    	$obsSetArr["frequency"] = $dataRow["Field15"];
    	$obsSetArr["escPlan"] = $dataRow["Field16"];
    	$obsSetArr["initial"] = $dataRow["Field17"];
    	$obsSetArr["O2Route"] = $dataRow["Field18"];
    	$obsSetArr["totalScore"] = $dataRow["Field19"];
    	return $obsSetArr;
    }
    
    public function addObsSet($obsSet){
    	foreach ($obsSet as $key => $value) {
			if(($value === NULL) || ($value == "")){
				$obsSet[$key] = 'NULL';
			}
		}
		
		$obsSetArr = getObsSetArray();
		foreach ($obsSetArr as $key => $value) {
			if(!isset($obsSet[$key])){
				$obsSet[$key] = 'NULL';
			}
		}
    	
		$field02 = str_replace('/', '-', $obsSet["date"]);
    	$field02 = date("Y-m-d", strtotime($field02));
    	
    	$field03 = $obsSet["time"];
    	$field04 = $obsSet["respRate"];
    	$field05 = $obsSet["spO2"];
    	$field06 = $obsSet["inspiredO2"];
    	$field07 = $obsSet["temp"];
    	$field08 = $obsSet["sistBP"];
    	$field09 = $obsSet["diastBP"];
    	$field10 = $obsSet["heartRate"];
    	$field11 = $obsSet["AVPU"];
    	$field12 = $obsSet["bloodSugar"];
    	$field13 = $obsSet["painScore"];
    	$field14 = $obsSet["urineOutput"];
    	$field15 = $obsSet["frequency"];
    	$field16 = $obsSet["escPlan"];
    	$field17 = $obsSet["initial"];
    	$field18 = $obsSet["O2Route"];
    	$field19 =  $obsSet["totalScore"];

		$insertQuery = "INSERT INTO `".$this->tableName."`
						(`Field02`, `Field03`, `Field04`, `Field05`, 
						`Field06`, `Field07`, `Field08`, `Field09`, `Field10`, 
						`Field11`, `Field12`, `Field13`, `Field14`, `Field15`, 
						`Field16`, `Field17`, `Field18`, `Field19`) VALUES 
						('".$field02."', '".$field03."', ".$field04.", ".$field05.", 
						'".$field06."', ".$field07.", ".$field08.", ".$field09.", ".$field10.", 
						'".$field11."', ".$field12.", ".$field13.", ".$field14.", '".$field15."', 
						'".$field16."', '".$field17."', '".$field18."', ".$field19.")";
		
		$this->database->query($insertQuery);
	
		// Attempt execution
		// If successful
		if($this->database->execute()){
			//echo 'obs added';
			array_push($this->obsData,$obsSet);
		}else{
			//echo 'Failed to add obs';
		}
		
    }
    
    //archives a patients obs once they have been discharged
    public function archive(){
        
    }
    
    

}
?>