<?php

function getObsSetArray(){
	$keys = array(
			"date",
    		"time",
    		"respRate",
    		"spO2",
    		"inspiredO2",
    		"temp",
    		"sistBP",
    		"diastBP",
    		"heartRate",
    		"AVPU",
    		"bloodSugar",
    		"totalScore",
    		"painScore",
    		"urineOutput",
    		"frequency",
    		"escPlan",
    		"initial",
    		"O2Route"
    		);
    $obsData = array();
    
    foreach($keys as $key){
    	$obsData[$key] = "";
    }
    
	return $obsData;
}

function sortByDateAndTime($a, $b) {
	$aTime = strtotime($a['date']." ".$a['time']);
	$bTime = strtotime($b['date']." ".$b['time']);

	return ($aTime > $bTime) ? +1 : -1;
}

//sorts data into left and right arrays (data to display in the left and right of the chart)
function sortObsData($dataSet){
	$visibleCols = 12;
	//usort($dataSet,"sortByDateAndTime");
	
	$numOfObs = count($dataSet);
	$dataLeft = [];
	$dataRight = [];
	
	if($numOfObs > $visibleCols){
		if($numOfObs > ($visibleCols*2)){
			$dataLeft = array_slice($dataSet,0,($numOfObs-$visibleCols));
			$dataRight = array_slice($dataSet,-$visibleCols);
		}else{
			$dataLeft = array_slice($dataSet,0,$visibleCols);
			$dataRight = array_slice($dataSet,-($numOfObs-$visibleCols));
		}
		
	}else{
		$dataLeft = $dataSet;
	}
	
	$result = array('dataLeft' => $dataLeft, 'dataRight' =>$dataRight);
	
	return $result;
}

function getDisplayData($dataSet){
	$obsData = sortObsData($dataSet);

	$displayDataLeft = separateData($obsData['dataLeft']);
	$displayDataRight = separateData($obsData['dataRight']);
	$displayData = array('dataLeft'=>$displayDataLeft, 'dataRight'=>$displayDataRight);
	return $displayData;
}

function separateData($dataSet){

	$numOfObs = count($dataSet);

	$result = getObsSetArray();
	
	for($i=0; $i<$numOfObs; $i++){
		$obsSet = $dataSet[$i];
		
		foreach ($obsSet as $key => $value){
			if($result[$key]== ""){
				$result[$key] = array();
			}
			
			if(($value === NULL) || ($value == "NULL")){
				$value = "";
			}
			if($key == "totalScore"){
				$total = $value;
				$esc = $obsSet["escPlan"];
				$value = array('score'=>$total,'esc'=>$esc);
			}
				
			array_push($result[$key], $value);
		}
	}
	
	return $result;
}

function getTestData($num){

	$testData = array();
		for($i = 0; $i < $num; $i++){
			$obsArr = getObsSetArray();
			
			$date1 = date_create("2016-01-31");
			$date2 = date_create("2016-01-01");
			$avpuArr=array("A","V","P","U");
			$escArr = array("Y","N","n/a");
			
			
			$timeStamp= rand(date_timestamp_get($date2),date_timestamp_get($date1));
			$obsArr['date'] = date('d-m-Y', $timeStamp);
			$obsArr['time'] =date('h:i:s', $timeStamp);
			$obsArr['respRate'] = rand(7, 26);
			$obsArr['spO2'] = rand(90,97);
			$obsArr['inspiredO2'] = rand(28,40);
			$obsArr['temp'] = rand(340,400)/10;
			$obsArr['sistBP'] = rand(80,210);
			$obsArr['diastBP'] = rand(60,80);
			$obsArr['heartRate'] = rand(30,140);
			$obsArr['AVPU'] = $avpuArr[rand(0,3)];
			$obsArr['bloodSugar'] = rand(2.5,16.0);
			$obsArr['totalScore'] = "";
			$obsArr['painScore'] = "";
			$obsArr['urineOutput'] = "30ml";
			$obsArr['frequency'] = "4hrly";
			$obsArr['escPlan'] = $escArr[rand(0,2)];
			$obsArr['initial'] = "TEST";
			$obsArr['O2Route'] = "";
			
			
			array_push($testData, $obsArr);
		}
		return $testData;
}





?>