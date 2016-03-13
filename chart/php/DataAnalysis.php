<?php



//testModule();
function testModule(){
	$result = NEWScore(33, 98, "RA", 37.0, 120, 90, "A");
	echo($result[0]);
	echo(" -  - ");
	echo($result[1]);
}

function calculateObsScores($obsDataSet){
	for($i=0;$i<count($obsDataSet);$i++){
		$score = NEWScore($obsDataSet[$i]["respRate"], $obsDataSet[$i]["spO2"], $obsDataSet[$i]["inspiredO2"], $obsDataSet[$i]["temp"], $obsDataSet[$i]["sistBP"], $obsDataSet[$i]["heartRate"], $obsDataSet[$i]["AVPU"]);
		$obsDataSet[$i]["totalScore"] =$score[1];
		$obsDataSet[$i]["escPlan"] =$score[0];
		
		//$scoreArr = array('score'=> $score[1], 'esc'=>$score[0]);
		//$obsDataSet[$i]["totalScore"] = $scoreArr;
		//var_dump($score);
	}                      
	return $obsDataSet;
}

function NEWScore($respRate, $SpO2, $O2pct, $temp, $systBP, $heartRate, $APVU) {
	
	//Declare variables
	$observationsArray;
	$obsParamArray;
	$newsScoreArray;
	$indexer;          
	$newsScore;
	$outcomes;
	$qMETn = "No";

	//populate the observationsArray with all observations taken at the time
    $observationsArray = array("", $respRate, $temp, $systBP, "", $heartRate, $APVU, $SpO2, $O2pct);



	//retrieve parameter thresholds or else load default
	for ($indexer=0; $indexer <= 8; $indexer++) {
		Switch ($indexer) {
			Case 0:
				$obsParamArray[$indexer] = array("nul", "nul", "nul", "nul", "nul", "nul", "nul");
				break;
			Case 1:
				$obsParamArray[$indexer] = array("norm", 20, 20, 24, 12, 9, 9);
				break;
			Case 2:
				$obsParamArray[$indexer] = array("norm", 38.0, 39.0, "nul", 36.1, 35.1, 35.1);
				break;
			Case 3:
				$obsParamArray[$indexer] = array("norm", 219, 219, 219, 111, 101, 91);
				break;
			Case 4:
				$obsParamArray[$indexer] = array("nul", "nul", "nul", "nul", "nul", "nul", "nul");
				break;
			Case 5:
				$obsParamArray[$indexer] = array("norm", 90, 110, 130, 51, 41, 41);
				break;
			Case 6:
				$obsParamArray[$indexer] = array("A", "V", "P", "U", "nul", "nul", "nul");
				break;
			Case 7:
				$obsParamArray[$indexer] = array("norm", "nul", "nul", "nul", 96, 94, 92);
				break;
			Case 8:
				$obsParamArray[$indexer] = array("RA", 0, 0, "nul", "nul", "nul", "nul");
				break;
		}
	}



	//compare scores against thresholds
	for ($indexer=0; $indexer <= 8; $indexer++) {
		Switch ($indexer)  {
			Case 0:
				$newsScoreArray[$indexer] = 0;
				if ($observationsArray[$indexer] == $obsParamArray[$indexer][0]) {$newsScoreArray[$indexer] = 0;}
				elseif ($observationsArray[$indexer] == "") {$newsScoreArray[$indexer] = 0;}
				elseif ($observationsArray[$indexer] == $obsParamArray[$indexer][3] and $obsParamArray[$indexer][3] !== "nul") {$newsScoreArray[$indexer] = 3;}
				elseif ($observationsArray[$indexer] == $obsParamArray[$indexer][2] and $obsParamArray[$indexer][2] !== "nul") {$newsScoreArray[$indexer] = 2;}
				elseif ($observationsArray[$indexer] == $obsParamArray[$indexer][1] and $obsParamArray[$indexer][1] !== "nul") {$newsScoreArray[$indexer] = 1;}
				elseif ($observationsArray[$indexer] == $obsParamArray[$indexer][6] and $obsParamArray[$indexer][6] !== "nul") {$newsScoreArray[$indexer] = 3;}
				elseif ($observationsArray[$indexer] == $obsParamArray[$indexer][5] and $obsParamArray[$indexer][5] !== "nul") {$newsScoreArray[$indexer] = 2;}
				elseif ($observationsArray[$indexer] == $obsParamArray[$indexer][4] and $obsParamArray[$indexer][4] !== "nul") {$newsScoreArray[$indexer] = 1;}
				
				
				break;
			
			Case 1:
				$newsScoreArray[$indexer] = 0;
				If ($observationsArray[$indexer] == $obsParamArray[$indexer][0]) {$newsScoreArray[$indexer] = 0;}
				ElseIf ($observationsArray[$indexer] == "") {$newsScoreArray[$indexer] = 0;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][3] and $obsParamArray[$indexer][3] !== "nul") {$newsScoreArray[$indexer] = 3;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][2] and $obsParamArray[$indexer][2] !== "nul") {$newsScoreArray[$indexer] = 2;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][1] and $obsParamArray[$indexer][1] !== "nul") {$newsScoreArray[$indexer] = 1;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][6] and $obsParamArray[$indexer][6] !== "nul") {$newsScoreArray[$indexer] = 3;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][5] and $obsParamArray[$indexer][5] !== "nul") {$newsScoreArray[$indexer] = 2;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][4] and $obsParamArray[$indexer][4] !== "nul") {$newsScoreArray[$indexer] = 1;}
				
				
				If ($observationsArray[$indexer] > 30 And $observationsArray[$indexer] !== "") {$qMETn = "MET";}

				If ($observationsArray[$indexer] < 8 And $observationsArray[$indexer] !== "") {$qMETn = "MET";}
				break;
			
			Case 2:
				$newsScoreArray[$indexer] = 0;
				If ($observationsArray[$indexer] == $obsParamArray[$indexer][0]) {$newsScoreArray[$indexer] = 0;}
				ElseIf ($observationsArray[$indexer] == "") {$newsScoreArray[$indexer] = 0;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][3] and $obsParamArray[$indexer][3] !== "nul") {$newsScoreArray[$indexer] = 3;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][2] and $obsParamArray[$indexer][2] !== "nul") {$newsScoreArray[$indexer] = 2;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][1] and $obsParamArray[$indexer][1] !== "nul") {$newsScoreArray[$indexer] = 1;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][6] and $obsParamArray[$indexer][6] !== "nul") {$newsScoreArray[$indexer] = 3;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][5] and $obsParamArray[$indexer][5] !== "nul") {$newsScoreArray[$indexer] = 2;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][4] and $obsParamArray[$indexer][4] !== "nul") {$newsScoreArray[$indexer] = 1;}
				break;
			
			Case 3:
				$newsScoreArray[$indexer] = 0;
				If ($observationsArray[$indexer] == $obsParamArray[$indexer][0]) {$newsScoreArray[$indexer] = 0;}
				ElseIf ($observationsArray[$indexer] == "") {$newsScoreArray[$indexer] = 0;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][3] and $obsParamArray[$indexer][3] !== "nul") {$newsScoreArray[$indexer] = 3;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][2] and $obsParamArray[$indexer][2] !== "nul") {$newsScoreArray[$indexer] = 2;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][1] and $obsParamArray[$indexer][1] !== "nul") {$newsScoreArray[$indexer] = 1;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][6] and $obsParamArray[$indexer][6] !== "nul") {$newsScoreArray[$indexer] = 3;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][5] and $obsParamArray[$indexer][5] !== "nul") {$newsScoreArray[$indexer] = 2;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][4] and $obsParamArray[$indexer][4] !== "nul") {$newsScoreArray[$indexer] = 1;}
				If ($observationsArray[$indexer] < 90 And $observationsArray[$indexer] !== "") {$qMETn = "MET";}
				break;
			
			Case 4:
				$newsScoreArray[$indexer] = 0;
				If ($observationsArray[$indexer] == $obsParamArray[$indexer][0]) {$newsScoreArray[$indexer] = 0;}
				ElseIf ($observationsArray[$indexer] == "") {$newsScoreArray[$indexer] = 0;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][3] and $obsParamArray[$indexer][3] !== "nul") {$newsScoreArray[$indexer] = 3;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][2] and $obsParamArray[$indexer][2] !== "nul") {$newsScoreArray[$indexer] = 2;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][1] and $obsParamArray[$indexer][1] !== "nul") {$newsScoreArray[$indexer] = 1;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][6] and $obsParamArray[$indexer][6] !== "nul") {$newsScoreArray[$indexer] = 3;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][5] and $obsParamArray[$indexer][5] !== "nul") {$newsScoreArray[$indexer] = 2;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][4] and $obsParamArray[$indexer][4] !== "nul") {$newsScoreArray[$indexer] = 1;}
				break;
			
			Case 5:
				$newsScoreArray[$indexer] = 0;
				If ($observationsArray[$indexer] == $obsParamArray[$indexer][0]) {$newsScoreArray[$indexer] = 0;}
				ElseIf ($observationsArray[$indexer] == "") {$newsScoreArray[$indexer] = 0;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][3] and $obsParamArray[$indexer][3] !== "nul") {$newsScoreArray[$indexer] = 3;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][2] and $obsParamArray[$indexer][2] !== "nul") {$newsScoreArray[$indexer] = 2;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][1] and $obsParamArray[$indexer][1] !== "nul") {$newsScoreArray[$indexer] = 1;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][6] and $obsParamArray[$indexer][6] !== "nul") {$newsScoreArray[$indexer] = 3;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][5] and $obsParamArray[$indexer][5] !== "nul") {$newsScoreArray[$indexer] = 2;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][4] and $obsParamArray[$indexer][4] !== "nul") {$newsScoreArray[$indexer] = 1;}
				
				If ($observationsArray[$indexer] > 130 And $observationsArray[$indexer] !== "") {$qMETn = "MET";}
				If ($observationsArray[$indexer] < 40 And $observationsArray[$indexer] !== "") {$qMETn = "MET";}
				break;
			
			Case 6:
				$newsScoreArray[$indexer] = 0;
				If ($observationsArray[$indexer] == $obsParamArray[$indexer][0]) {$newsScoreArray[$indexer] = 0;}
				ElseIf ($observationsArray[$indexer] == "") {$newsScoreArray[$indexer] = 0;}
				ElseIf ($observationsArray[$indexer] == $obsParamArray[$indexer][3] and $obsParamArray[$indexer][3] !== "nul") {$newsScoreArray[$indexer] = 3;}
				ElseIf ($observationsArray[$indexer] == $obsParamArray[$indexer][2] and $obsParamArray[$indexer][2] !== "nul") {$newsScoreArray[$indexer] = 3;}
				ElseIf ($observationsArray[$indexer] == $obsParamArray[$indexer][1] and $obsParamArray[$indexer][1] !== "nul") {$newsScoreArray[$indexer] = 3;}
				ElseIf ($observationsArray[$indexer] == $obsParamArray[$indexer][6] and $obsParamArray[$indexer][6] !== "nul") {$newsScoreArray[$indexer] = 3;}
				ElseIf ($observationsArray[$indexer] == $obsParamArray[$indexer][5] and $obsParamArray[$indexer][5] !== "nul") {$newsScoreArray[$indexer] = 2;}
				ElseIf ($observationsArray[$indexer] == $obsParamArray[$indexer][4] and $obsParamArray[$indexer][4] !== "nul") {$newsScoreArray[$indexer] = 1;}
				
				If ($observationsArray[$indexer] == "P" And $observationsArray[$indexer] !== "") {$qMETn = "MET";}
				break;
			
			Case 7:
				$newsScoreArray[$indexer] = 0;
				If ($observationsArray[$indexer] == $obsParamArray[$indexer][0]) {$newsScoreArray[$indexer] = 0;}
				ElseIf ($observationsArray[$indexer] == "") {$newsScoreArray[$indexer] = 0;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][3] and $obsParamArray[$indexer][3] !== "nul") {$newsScoreArray[$indexer] = 3;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][2] and $obsParamArray[$indexer][2] !== "nul") {$newsScoreArray[$indexer] = 2;}
				ElseIf ($observationsArray[$indexer] > $obsParamArray[$indexer][1] and $obsParamArray[$indexer][1] !== "nul") {$newsScoreArray[$indexer] = 1;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][6] and $obsParamArray[$indexer][6] !== "nul") {$newsScoreArray[$indexer] = 3;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][5] and $obsParamArray[$indexer][5] !== "nul") {$newsScoreArray[$indexer] = 2;}
				ElseIf ($observationsArray[$indexer] < $obsParamArray[$indexer][4] and $obsParamArray[$indexer][4] !== "nul") {$newsScoreArray[$indexer] = 1;}
				break;
			
			Case 8:
				$newsScoreArray[$indexer] = 0;
				If ($observationsArray[$indexer] !== $obsParamArray[$indexer][0] and $observationsArray[$indexer] !== "") {$newsScoreArray[$indexer] = 2;}
				break;
		}
	}	
	

	
	
//>>trigger METs?
	$newsScore = 0;
//If ($qMETn == "MET"){$qMETn = "Esc";}
	//$qMETn = "No"
	If ($qMETn !== "MET") {
		foreach ($newsScoreArray as $score) {
			$newsScore = $newsScore + $score;
		If ($newsScore > 4) {$qMETn = "Esc";}
		If ($score > 2) {$qMETn = "Esc";}
		If ($newsScore > 7) {$qMETn = "MET";}
		}
	}

	If ($newsScore == 0) {
		foreach ($newsScoreArray as $score) {
			$newsScore = $newsScore + $score;
		}
	}

	//return scores
	$outcomes = array($qMETn, $newsScore);
	return $outcomes;
}

?>