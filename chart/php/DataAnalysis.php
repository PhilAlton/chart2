<?php

//testModule();

function testModule(){
	$patientObsDataSet= array();
	$patientObsDataSet["respRate"] = 20;
	$patientObsDataSet["spO2"] = 96;
	$patientObsDataSet["inspiredO2"]= "RA";
	$patientObsDataSet["temp"] = 36.1;
	$patientObsDataSet["sistBP"]=  90;
	$patientObsDataSet["heartRate"]= 90;
	$patientObsDataSet["AVPU"]="A";
	
	$result = ACEWScore($patientObsDataSet);
	echo($result[0]);
	echo(" -  - ");
	echo($result[1]);
}


function calculateObsScores($obsDataSet){
	for($i=0;$i<count($obsDataSet);$i++){
		$score = ACEWScore($obsDataSet[$i]);
		
		If ($score[1] === 0){$score[1] = "0";}
		$obsDataSet[$i]["totalScore"] =$score[1];
		$obsDataSet[$i]["escPlan"] =$score[0];
	}                      
	
	return $obsDataSet;
}




function ACEWScore($patientObsDataSet, $triggerArray = array(2,4,6)) {
	
	//Declare variables
	$observationsArray = array("respRate", "spO2", "inspiredO2", "temp", "sistBP", "heartRate", "AVPU" );
	
	$obsParamArray;
	$specialThresholdsArray;
	$scoreArray;
	
	$ACEWScore = 0;
	$qTrigger = 1;
	$qMET = "No";
	$outcomes;
	$compareParam;
	
	


	
	
	
	//populate the obsParamArray with the thresholds for each parameter
	//retrieve parameter thresholds or else load default
	
    $obsParamArray=array();
	$obsParamArray["respRate"] 	= 	array	(array(20, 24, 12, 9), 			array(">", ">", "<", "<"), 		array(2,3,1,3)		);
	$obsParamArray["spO2"] 		=	array	(array(96, 94, 92),				array("<", "<", "<"), 			array(1,2,3)		);
	$obsParamArray["inspiredO2"]=	array	(array("RA", 0), 				array("=", ">"), 				array(0,2)			);
	$obsParamArray["temp"] 		=	array	(array(38.0, 39.0, 36.1, 35.1), array(">", ">", "<", "<"), 		array(1,2,1,3)		);
	$obsParamArray["sistBP"] 	=	array	(array(219, 111, 101, 91), 		array(">", "<", "<", "<"), 		array(3,1,2,3)		);
	$obsParamArray["heartRate"]	=  	array	(array(90, 110, 130, 51, 41), 	array(">", ">", ">", "<", "<"), array(1,2,3,1,3)	);
	$obsParamArray["AVPU"] 		=	array	(array("A", "V", "P", "U"), 	array("=", "=", "=", "="), 		array(0,3,3,3)		);
	
	
	//set special parameter thresholds
	$specialThresholdsArray=array();
	$specialThresholdsArray["respRate"] 	= array		(array(8, 30), 		array("<", ">"), 	array(3,3)		);
	$specialThresholdsArray["spO2"] 		= array		(array(), 			array("=", ">"), 	array()			);
	$specialThresholdsArray["inspiredO2"] 	= array		(array(), 			array("=", ">"), 	array()			);
	$specialThresholdsArray["temp"]			= array		(array(), 			array("=", ">"), 	array()			);
	$specialThresholdsArray["sistBP"]		= array		(array(90), 		array("<"), 		array(3)		);
	$specialThresholdsArray["heartRate"]	= array		(array(40, 130), 	array("<", ">"), 	array(3,3)		);
	$specialThresholdsArray["AVPU"]			= array		(array("P"), 		array("="), 		array(3)		);
	
	
	//set score array to 0
	$scoreArray = array();
	$scoreArray["respRate"] = 0;
	$scoreArray["spO2"] = 0;
	$scoreArray["inspiredO2"] = 0;
	$scoreArray["temp"]= 0;
	$scoreArray["sistBP"]=0; 
	$scoreArray["heartRate"]=0;
	$scoreArray["AVPU"]=0;

	
	
	//compare observation values against thresholds
	foreach ($observationsArray as $observation){

		for ($i=0; $i<sizeof($obsParamArray[$observation][0]); $i++){
	
			$compareParam = compareParam($patientObsDataSet[$observation], $obsParamArray[$observation][0][$i]);			
		    If ($compareParam == $obsParamArray[$observation][1][$i]){
				If ($scoreArray[$observation] > $obsParamArray[$observation][2][$i]){
					$scoreArray[$observation] = $scoreArray[$observation];
				}else{
					$scoreArray[$observation] = $obsParamArray[$observation][2][$i];
				}
			}else{
				If ($scoreArray[$observation] > 0){
					$scoreArray[$observation] = $scoreArray[$observation];
				}else{
					$scoreArray[$observation] = 0;
				}
			}
		}
		
		
		
		//compare observation values against special parameters for METs
		for ($i=0; $i<sizeof($specialThresholdsArray[$observation][0]); $i++){
			
			$compareParam = compareParam($patientObsDataSet[$observation], $specialThresholdsArray[$observation][0][$i]);	
			If ($compareParam == $specialThresholdsArray[$observation][1][$i]){
				$qTrigger = $qTrigger * $specialThresholdsArray[$observation][2][$i];
			}
		}	
		
		//trigger an escalation if any parameter scores 3
		if ($scoreArray[$observation] > $triggerArray[0]){$qTrigger = $qTrigger * 2;}
	
		
	}

	
	//Total scores for ACEWScore and affect triggering through totals
	
	foreach ($observationsArray as $observation){
		$ACEWScore += $scoreArray[$observation];
	}
	If($ACEWScore > $triggerArray[2]){$qTrigger = $qTrigger * 3;}
	elseIf($ACEWScore > $triggerArray[1]){$qTrigger = $qTrigger * 2;}
	else{$qTrigger = $qTrigger;}
	
	//trigger METs/escalations?
	If (($qTrigger % 3) == 0){$qMET = "MET";}
	ElseIf (($qTrigger % 2) == 0){$qMET = "Esc";}
	Else{$qMET = "No";}

	
	
	//validate input data - ensure no blanks
	$nullValues = False;
	$i = $ACEWScore;
	foreach ($observationsArray as $observation){
		If ($patientObsDataSet[$observation] == "" or $patientObsDataSet[$observation] === "" or $patientObsDataSet[$observation] == null or $patientObsDataSet[$observation] === 0){
			$nullValues = True;
			$qMET = "No";
			$i = $i - 3;
		}
	}
	If($nullValues){
		$ACEWScore = $i."-".$ACEWScore;
		If($i > $triggerArray[2]){$qMET = "MET";}
		elseIf($i > $triggerArray[1]){$qMET = "Esc";}
		else{$qMET = "No";}
		}
		
	//return outcomes
	$outcomes = array($qMET, $ACEWScore);
	return $outcomes;
}


// function to compare parameters and return how one compares with the other
function compareParam($param, $comparitor){
	$compareParam;
	
	if($param == null or $param == "" or $param === 0 or $param == "null"){$compareParam = 0;}
	elseif($param < $comparitor){$compareParam = "<";}
	elseif($param > $comparitor){$compareParam = ">";}
	elseif($param == $comparitor){$compareParam = "=";}
	else{$compareParam = 0;}
	
	return $compareParam;
}


?>