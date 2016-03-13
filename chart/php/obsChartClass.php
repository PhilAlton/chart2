<?php

class obsChart{
	
	
	public $patient;
	
	public $headerTable;
	public $dateAndTimeTable;
	public $respRateTable;
	public $spO2Table;
	public $tempTable;
	public $bpTable;
	public $heartRateTable;
	public $avpuTable;
	public $bldSugarTable;
	public $totalScoreTable;

	public function __construct($id){
		$this->patient = new patient($id);
		
		$data = $this->patient->obsData;
		
		$data = calculateObsScores($data);
		$this->patient->obsData = $data;
		
		$data = getDisplayData($data);
		
		$this->hearderTable = array();
        $this->dateAndTimeTable = new obsTable("dateAndTime");
        $this->respRateTable = new obsTable("respRate");
        $this->spO2Table = new obsTable("spO2");
        $this->tempTable = new obsTable("temp");
        $this->bpTable = new obsTable("BP");
        $this->heartRateTable = new obsTable("heartRate");
        $this->avpuTable = new obsTable("avpu");
        $this->bldSugarTable = new obsTable("bloodSugar");
        $this->totalScoreTable = new obsTable("totalScore"); 
        $this->addParamsTable = new obsTable("addParams");
        $this->bottomTable = new obsTable("bottom");
        
        $this->initTableData($data);
    }

    function initTableData($data){
    	$this->headerTable['name'] = $this->patient->patName;
    	$this->headerTable['dob'] = $this->patient->dob;
    	$this->headerTable['admit'] = $this->patient->admitDate;
    	
    	$this->dateAndTimeTable->setDataLeft(array('date'=>$data['dataLeft']['date'],'time'=>$data['dataLeft']['time']));
		$this->dateAndTimeTable->setDataRight(array('date'=>$data['dataRight']['date'],'time'=>$data['dataRight']['time']));
		$this->dateAndTimeTable->setStepSize(1);
		$this->dateAndTimeTable->setMinVal(0.5);
		$this->dateAndTimeTable->setMaxVal(2.5);
		$this->dateAndTimeTable->setMultiData(true);
    	
		$this->respRateTable->setTableName("RESP. RATE");
		$this->respRateTable->setValues(array("&ge;25","21-24","12-20","9-11","&le;8"));
		$this->respRateTable->setSeverities(array(3,2,0,1,3));
		$this->respRateTable->setTableHeight(sizeof($this->respRateTable->getSeverities())*CELL_HEIGHT);
		$this->respRateTable->setHighlights(array(1=>BG_RED, 2=>BG_ORANGE, 4=>BG_GREEN, 5=>BG_RED));
		$this->respRateTable->setSections(array(5=>array(25,25), 4=>array(21,24), 3=>array(12,20), 2=>array(9,11), 1=>array(8,8)));
		$this->respRateTable->setDataLeft($data['dataLeft']['respRate']);
		$this->respRateTable->setDataRight($data['dataRight']['respRate']);
		$this->respRateTable->setStepSize(1);
		$this->respRateTable->setMinVal(0.5);
		$this->respRateTable->setMaxVal(5.5);

		$this->spO2Table->setTableName("Sp0<sub>2</sub>");
		$this->spO2Table->setValues(array("&ge;96","94-95","92-93","&le;91","%"));
		$this->spO2Table->setSeverities(array(0,1,2,3,2));
		$this->spO2Table->setTableHeight(sizeof($this->spO2Table->getSeverities())*CELL_HEIGHT);
		$this->spO2Table->setHighlights(array(2=>BG_GREEN, 3=>BG_ORANGE, 4=>BG_RED, 5=>BG_ORANGE));
		$this->spO2Table->setSections(array(5=>array(96,96), 4=>array(94,95), 3=>array(92,93), 2=>array(91,91)));
		$this->spO2Table->setDataLeft(array('spO2'=>$data['dataLeft']['spO2'],'o2FlowRate'=>$data['dataLeft']['inspiredO2']));
		$this->spO2Table->setDataRight(array('spO2'=>$data['dataRight']['spO2'],'o2FlowRate'=>$data['dataRight']['inspiredO2']));
		$this->spO2Table->setStepSize(1);
		$this->spO2Table->setMinVal(0.5);
		$this->spO2Table->setMaxVal(5.5);
		$this->spO2Table->setMultiData(true);
		
		$this->tempTable->setTableName("TEMP");
		$this->tempTable->setValues(array("","&ge;39&deg","38&deg","37&deg","36&deg","&le;35&deg",""));
		$this->tempTable->setSeverities(array(2,1,0,0,1,3));
		$this->tempTable->setTableHeight(sizeof($this->tempTable->getSeverities())*CELL_HEIGHT);
		$this->tempTable->setHighlights(array(1=>BG_ORANGE, 2=>BG_GREEN, 5=>BG_GREEN, 6=>BG_RED));
		$this->tempTable->setDataLeft($data['dataLeft']['temp']);
		$this->tempTable->setDataRight($data['dataRight']['temp']);
		$this->tempTable->setStepSize(1);
		$this->tempTable->setMinVal(34);
		$this->tempTable->setMaxVal(40);
		
		$this->bpTable->setTableName("BLOOD PRESSURE");
		$this->bpTable->setValues(array("230","220","210","200","190","180","170","160","150","140","130","120","110","100","90","80","70","60","50"));
		$this->bpTable->setSeverities(array(3,0,0,0,0,0,0,0,0,0,0,0,1,2,3,3,3,3,3));
		$this->bpTable->setTableHeight(sizeof($this->bpTable->getSeverities())*CELL_HEIGHT);
		$this->bpTable->setHighlights(array(1=>BG_RED, 13=>BG_GREEN,14=>BG_ORANGE, 15=>BG_RED,16=>BG_RED,17=>BG_RED,18=>BG_RED,19=>BG_RED));
		$this->bpTable->setDataLeft(array('sistBP'=>$data['dataLeft']['sistBP'],'diastBP'=>$data['dataLeft']['diastBP']));
		$this->bpTable->setDataRight(array('sistBP'=>$data['dataRight']['sistBP'],'diastBP'=>$data['dataRight']['diastBP']));
		$this->bpTable->setStepSize(10);
		$this->bpTable->setMinVal(45);
		$this->bpTable->setMaxVal(235);
		$this->bpTable->setMultiData(true);

		$this->heartRateTable->setTableName("HEART RATE");
		$this->heartRateTable->setValues(array(">140","130","120","110","100","90","80","70","60","50","40","30"));
		$this->heartRateTable->setSeverities(array(3,2,2,1,1,0,0,0,0,1,3,3));
		$this->heartRateTable->setTableHeight(sizeof($this->heartRateTable->getSeverities())*CELL_HEIGHT);
		$this->heartRateTable->setHighlights(array(1=>BG_RED, 2=>BG_ORANGE, 3=>BG_ORANGE, 4=>BG_GREEN, 5=>BG_GREEN, 10=>BG_GREEN, 11=>BG_RED,12=>BG_RED));
		$this->heartRateTable->setDataLeft($data['dataLeft']['heartRate']);
		$this->heartRateTable->setDataRight($data['dataRight']['heartRate']);
		$this->heartRateTable->setStepSize(10);
		$this->heartRateTable->setMinVal(25);
		$this->heartRateTable->setMaxVal(145);

		$this->avpuTable->setTableName("Level of Consciousness");
		$this->avpuTable->setValues(array("Alert","V/P/U"));
		$this->avpuTable->setSeverities(array(0,3));
		$this->avpuTable->setTableHeight(sizeof($this->avpuTable->getSeverities())*CELL_HEIGHT);
		$this->avpuTable->setHighlights(array(2=>BG_RED));
		$this->avpuTable->setDataLeft($data['dataLeft']['AVPU']);
		$this->avpuTable->setDataRight($data['dataRight']['AVPU']);
		$this->avpuTable->setStepSize(1);
		$this->avpuTable->setMinVal(0.5);
		$this->avpuTable->setMaxVal(2.5);
		
		$this->bldSugarTable->setHighlights(array());
		$this->bldSugarTable->setDataLeft($data['dataLeft']['bloodSugar']);
		$this->bldSugarTable->setDataRight($data['dataRight']['bloodSugar']);
		$this->bldSugarTable->setStepSize(1);
		$this->bldSugarTable->setMinVal(1);
		$this->bldSugarTable->setMaxVal(1);
		
		$this->totalScoreTable->setHighlights(array());
		$this->totalScoreTable->setDataLeft($data['dataLeft']['totalScore']);
		$this->totalScoreTable->setDataRight($data['dataRight']['totalScore']);
		$this->totalScoreTable->setStepSize(1);
		$this->totalScoreTable->setMinVal(1);
		$this->totalScoreTable->setMaxVal(1);
		
		$this->addParamsTable->setHighlights(array());
		$this->addParamsTable->setDataLeft($data['dataLeft']['bloodSugar']);
		$this->addParamsTable->setDataRight($data['dataRight']['bloodSugar']);
		$this->addParamsTable->setStepSize(1);
		$this->addParamsTable->setMinVal(0.5);
		$this->addParamsTable->setMaxVal(3.5);
		
		$this->bottomTable->setHighlights(array());
		$this->bottomTable->setDataLeft($data['dataLeft']['bloodSugar']);
		$this->bottomTable->setDataRight($data['dataRight']['bloodSugar']);
		$this->bottomTable->setStepSize(1);
		$this->bottomTable->setMinVal(0.5);
		$this->bottomTable->setMaxVal(4.5);
    }
    
    public function generateTables(){
    	$this->headerTable();
		$this->dateAndTimeTable();
		$this->addCategory($this->respRateTable);
		$this->addCategory($this->spO2Table);
		$this->addCategory($this->tempTable);
		$this->addCategory($this->bpTable);
		$this->addCategory($this->heartRateTable);
		$this->addCategory($this->avpuTable);
		$this->bloodSugarTable();
		$this->totalScoreTable();
		$this->additionalParametersTable();
		$this->bottomTable();
    }
    
    
    
    private function headerTable(){
    	$addObs = "obsEntryForm.php?chsi=".$_GET["chsi"];
    	$selectPatient = "selectPatient.php?chsi=".$_GET["chsi"];
    	echo '<div id="title" style="color:white;">';
    		echo '<a href="'.$selectPatient.'">';
				echo '<input id="changePatient" type="button" value="<" />';
			echo '</a>';
			echo 'Observation chart for the National Early Warning Score (NEWS)';
			echo '<a href="'.$addObs.'">';
				echo '<input id="newObs" type="button" value="+" />';
			echo '</a>';
		echo '</div>';
    	
		echo '<div class="headerContainer" style="height:'.(CELL_HEIGHT*2).'px">';
	 		echo '<table>';
	 			echo '<td class="keyContainer" bgcolor="'.BG_WHITE.'">';
				// either table or an image here, whichever is worth the effort for!
				echo '</td>';
				echo '<td>';
	 	 			echo '<table>';
	 	 				echo '<td class="headerTitle">';
	 	 					echo 'NAME:';
	 	 				echo '</td>';
	 	 				echo '<td class="headerData">';
	 	 					echo $this->headerTable['name'];
	 	 				echo '</td>';
	 	 			echo '</table>';
	 	 		echo '</td>';
	 	 		echo '<td>';
					echo '<table>';
	 	 				echo '<td class="headerTitle">';
	 	 					echo 'D.O.B:';	
	 	 				echo '</td>';
	 	 				echo '<td class="headerData">';
	 	 					echo $this->headerTable['dob'];
	 	 				echo '</td>';
	 	 			echo '</table>';
	 	 		echo '</td>';
	 	 		echo '<td>';
					echo '<table>';
						echo '<td class="headerTitle">';
							echo 'ADMISSION DATE:';	
						echo '</td>';
						echo '<td  class="headerData">';
							echo $this->headerTable['admit'];
						echo '</td>';
					echo '</table>';
	 	 		echo '</td>';
	 	 	echo '</table>';
	 	 echo '</div>';
	}
	
	private function dateAndTimeTable(){
		echo '<div class="category" style="height:'.(CELL_HEIGHT*2).'px;padding-top:0">';
			echo '<table id="dateTable">';
	 			echo '<td class="titleContainer" bgcolor="'.BG_WHITE.'">';
	 				echo '<table>';
	 					echo '<td class="bigTitle" style="color:ffffff">';
	 						echo '<table>';
	 	 						$this->addSmallTitlesLeft(array("DATE","TIME"));
	 	 					echo '</table>';
	 	 				echo '</td>';
	 	 			echo '</table>';
	 	 		echo '</td>';
	 	 		echo '<td class="cells">';
	 	 			echo'<div class="graphContainerLeft" style="height:'.(CELL_HEIGHT*2).'px" onscroll="syncScrolls(this)">';               
	 	 				echo '<canvas class="graph" id="dateAndTimeLeft" height='.(CELL_HEIGHT*2).'px">';
	 	 				echo '</canvas>';
	 	 			echo'</div>';
	 	 		echo '</td>';
	 	 		echo' <td class="severity">';
	 	 			echo '<table>';
	 	 				$this->addSeverityRows(array(0,0));
	 	 			echo '</table>';
	 	 		echo '</td>';
	 	 		echo '<td class="cells">';
	 	 			echo'<div class="graphContainerRight" style="height:'.(CELL_HEIGHT*2).'px">';
						echo '<canvas class="graph" id="dateAndTimeRight"  height='.(CELL_HEIGHT*2).'px">';
						echo '</canvas>';
	 	 			echo'</div>';
	 	 		echo '</td>';
	 	 		echo '<td class="values" bgcolor="'.BG_WHITE.'">';
	 				echo '<table>';
	 	 				$this->addSmallTitlesRight(array("DATE","TIME"));
	 	 			echo '</table>';
	 	 		echo '</td>';
	 	 	echo '</table>';
	 	 echo '</div>';
	}
	
	private function addCategory($table, $graph = true) {
		$centerLine = false;
		
		if(($table->getTableId())=="temp"){
			$centerLine = true;
		}

		echo '<div class="category" style="height:'.($table->getTableHeight()).'px">';
			echo '<table id="'.$table->getTableName().'" >';
				echo '<td class="titleContainer">';
					echo '<table>';
						echo '<tr>';
							echo '<td class="title" bgcolor="'.BG_BLUE.'">';
								echo $table->getTableName();
							echo '</td>';
							echo '<td class="values">';
								echo '<table>';
									$this->addLeftValueRows($table->getValues(), $centerLine);
								echo '</table>';
							echo '</td>';
						echo '</tr>';
					echo '</table>';
				echo '</td>';
				echo '<td id="dataLeft" class="cells">';
					if($graph == false){
						echo '<table>';
							$this->addCellRows($table->getSeverities(),$centerLine);
						echo '</table>';
					}else{
						echo'<div class="graphContainerLeft" onscroll="syncScrolls(this)">';
						echo '<canvas class="graph" id="'.($table->getTableId()).'Left" height="'.($table->getTableHeight()).'px">';
						echo '</canvas>';
						echo'</div>';
					}
				echo '</td>';
				echo '<td class="severity">';
					echo '<table>';
						$this->addSeverityRows($table->getSeverities());
					echo '</table>';
				echo '</td>';
				echo '<td id="dataRight" class="cells">';
					if($graph == false){
						echo '<table>';
							$this->addCellRows($table->getSeverities());
						echo '</table>';
					}else{
						echo'<div class="graphContainerRight">';
						echo '<canvas class="graph" id="'.($table->getTableId()).'Right" height="'.($table->getTableHeight()).'px">';
						echo '</canvas>';
						echo'</div>';
					}
				echo '</td>';
				echo '<td class="values">';
					echo '<table>';
						$this->addRightValueRows($table->getValues(),$centerLine);
					echo '</table>';
				echo '</td>';
			echo '</table>';
		echo '</div>';
	}

	
	private function bloodSugarTable(){
		echo '<div class="category" style="height:'.CELL_HEIGHT.'px">';
	 		echo '<table id="BSTable">';
	 			echo '<td class="titleContainer" bgcolor="'.BG_BLUE.'">';
	 				echo '<table>';
	 					echo '<td class="bigTitle">BLOOD SUGAR</td>';
	 				echo '</table>';
	 			echo '</td>';
	 			echo '<td class="cells">';
	 	 			echo'<div class="graphContainerLeft" style="height:'.(CELL_HEIGHT).'px" onscroll="syncScrolls(this)">';
	 	 				echo '<canvas class="graph" id="bloodSugarLeft" height='.(CELL_HEIGHT).'px">';
	 	 				echo '</canvas>';
	 	 			echo'</div>';
	 	 		echo '</td>';
	 	 		echo '<td class="severity">';
	 	 			echo '<table>';
	 	 				$this->addSeverityRows(array(0));
	 	 			echo '</table>';
	 	 		echo '</td>';
	 	 		echo '<td class="cells">';
	 	 			echo'<div class="graphContainerRight" style="height:'.(CELL_HEIGHT).'px">';
	 	 				echo '<canvas class="graph" id="bloodSugarRight" height='.(CELL_HEIGHT).'px">';
	 	 				echo '</canvas>';
	 	 			echo'</div>';	
	 	 		echo '</td>';
	 	 		echo '<td class="values" bgcolor="'.BG_BLUE.'">';
	 	 			echo '<table>';
	 					echo '<td class="smallTitleRight">Bl\d Sugar</td>';
	 				echo '</table>';
	 			echo '</td>';
	 		echo '</table>';
	 	echo '</div>';
	}

	private function totalScoreTable(){
		echo '<div class="category" style="height:'.(CELL_HEIGHT*2).'px">';
			echo '<table>';
				echo '<td class="titleContainer" bgcolor="'.BG_DARK_BLUE.'">';
					echo '<table>';
						echo '<td class="bigTitle" style="color:ffffff">TOTAL NEW SCORE</td>';
					echo '</table>';	
				echo '</td>';
				echo '<td class="cells">';
					echo'<div class="graphContainerLeft" style="height:'.(CELL_HEIGHT*2).'px" onscroll="syncScrolls(this)">';
						echo '<canvas class="graph" id="totalScoreLeft" height='.(CELL_HEIGHT*2).'px">';
						echo '</canvas>';
					echo'</div>';
				echo '</td>';
				echo '<td class="severity">';
					echo '<table>';
						echo '<tr bgcolor="'.BG_DARK_BLUE.'" height="100%"><td class="severitytd"></td></tr>';
					echo '</table>';
				echo '</td>';
				echo '<td class="cells">';
					echo'<div class="graphContainerRight" style="height:'.(CELL_HEIGHT*2).'px">';
						echo '<canvas class="graph" id="totalScoreRight" height='.(CELL_HEIGHT*2).'px">';
						echo '</canvas>';
					echo'</div>';
				echo '</td>';
				echo '<td class="values" >';
					echo '<table>';
						echo '<td class="smallTitleRight" style="color:ffffff; background-color:#'.BG_DARK_BLUE.';" >TOTAL SCORE</td>';
					echo '</table>';
				echo '</td>';
			echo '</table>';
		echo '</div>';
	}
	
	private function additionalParametersTable(){
		echo '<div class="category" style="height:'.(CELL_HEIGHT*3).'px">';
			echo '<table>';
				echo '<td class="titleContainer" bgcolor="'.BG_BLUE.'">';
					echo '<table>';
						echo '<td class="verticalTitle" bgcolor="'.BG_DARK_BLUE.'" style="color:'.BG_WHITE.'">';
							echo '<div class="leftVerticalText">Additional Parameters</div>';
						echo '</td>';
						echo '<td class="bigTitle" style="color:ffffff">';
							echo '<table>';
								echo '<tr>';
									echo '<td class="smallTitleLeft" > </td>';
								echo '</tr>';
								echo '<tr>';
									echo '<td class="smallTitleLeft" style="height:34%">Pain Score</td>';
								echo '</tr>';
								echo '<tr>';
									echo '<td class="smallTitleLeft"> </td>';
								echo '</tr>';
							echo '</table>';
						echo '</td>';
					echo '</table>';
				echo '</td>';
				echo '<td class="cells">';
					echo'<div class="graphContainerLeft" style="height:'.(CELL_HEIGHT*3).'px" onscroll="syncScrolls(this)">';
						echo '<canvas class="graph" id="addParamsLeft" height='.(CELL_HEIGHT*3).'px">';
						echo '</canvas>';
					echo'</div>';
				echo '</td>';
				echo '<td class="severity">';
					echo '<table>';
						$this->addSeverityRows(array(0,0,0));
					echo '</table>';
				echo '</td>';
				echo '<td class="cells">';
					echo'<div class="graphContainerRight" style="height:'.(CELL_HEIGHT*3).'px">';
						echo '<canvas class="graph" id="addParamsRight" height='.(CELL_HEIGHT*3).'px">';
						echo '</canvas>';
					echo'</div>';
				echo '</td>';
				echo '<td class="values" bgcolor="'.BG_BLUE.'">';
					echo '<table>';
						echo '<tr>';
							echo '<td class="smallTitleRight"></td>';
						echo '</tr>';
						echo '<tr>';
							echo '<td class="smallTitleRight" style="height:34%">Pain Score</td>';
						echo '</tr>';
						echo '<tr>';
							echo '<td class="smallTitleRight"></td>';
						echo '</tr>';
					echo '</table>';
				echo '</td>';
			echo '</table>';
		echo '</div>';
	}
	
	private function bottomTable(){
		echo '<div class="category" style="height:'.(CELL_HEIGHT*4).'px; padding-bottom:25px;">';
			echo '<table>';
				echo '<td class="titleContainer" bgcolor="'.BG_BLUE.'">';
					echo '<table>';
						echo '<td class="bigTitle" style="color:ffffff">';
							echo '<table>';
								 $this->addSmallTitlesLeft(array("Urine Output","Monitoring Frequency","Escalation Plan Y/N n/a","Initials"));
							echo '</table>';
						echo '</td>';
					echo '</table>';
				echo '</td>';
				echo '<td class="cells">';
					echo'<div class="graphContainerLeft" style="height:'.(CELL_HEIGHT*4).'px" onscroll="syncScrolls(this)">';
						echo '<canvas class="graph" id="bottomLeft" height='.(CELL_HEIGHT*4).'px">';
						echo '</canvas>';
					echo'</div>';
				echo '</td>';
				echo '<td class="severity">';
					echo '<table>';
						$this->addSeverityRows(array(0,0,0,0));
					echo '</table>';
				echo '</td>';
				echo '<td class="cells">';
					echo'<div class="graphContainerRight" style="height:'.(CELL_HEIGHT*4).'px">';
						echo '<canvas class="graph" id="bottomRight" height='.(CELL_HEIGHT*4).'px">';
						echo '</canvas>';
					echo'</div>';
				echo '</td>';
				echo '<td class="values" bgcolor="'.BG_BLUE.'">';
					echo '<table>';
						$this->addSmallTitlesRight(array("Urine Output","Monitor Freq","Escal Plan","Initials"));
					echo '</table>';
				echo '</td>';
			echo '</table>';
		echo '</div>';
	}
	
	private function addLeftValueRows(array $values, $centerLine = false) {
		$border = "solid #909092 1px;";
		$padding = "2px;";
		foreach ($values as $val) {
			if(($val != "") && ($centerLine)){
				$val = $val."  &mdash;";
				$border = "none;";
				$padding = "0px;";
			}else if($centerLine){
				$border = "none;";
				$padding = "0px;";
			}
			echo '<tr>';
			echo '<td class="valuestdLeft" style="border-top:'.$border.' border-bottom:'.$border.' padding-right:'.$padding.'" >'.$val.'</td>';
			echo '</tr>';
		}	
	}
	
	private function addRightValueRows(array $values, $centerLine = false) {
		$border = "solid #909092 1px;";
		$padding = "2px;";
		foreach ($values as $val) {
			if(($val != "") && ($centerLine)){
				$val = "&mdash;  ".$val;
				$border = "none;";
				$padding = "0px;";
			}else if($centerLine){
				$border = "none;";
				$padding = "0px;";
			}
			echo '<tr>';
			echo '<td class="valuestdRight" style="border-top:'.$border.' border-bottom:'.$border.' padding-left:'.$padding.'" >'.$val.'</td>';
			echo '</tr>';
		}	
	}
	
	private function addSmallTitlesLeft(array $values) {
		foreach ($values as $val) {
			echo '<tr>';
				echo '<td class="smallTitleLeft" >'.$val.'</td>';
			echo '</tr>';
		}	
	}
	
	private function addSmallTitlesRight(array $values) {
		foreach ($values as $val) {
			echo '<tr>';
				echo '<td class="smallTitleRight">'.$val.'</td>';
			echo '</tr>';
		}	
	}
	
	// functions to create the rows of each table automatically.
	private function addSeverityRows(array $severities) {
		$height = 1;
		for ($i=0; $i < sizeof($severities); $i++) { 
			// check if the next severity is the same as the previous one. The last element cant check last+1 - not there
			if($i != sizeof($severities)-1 && $severities[$i] == $severities[$i+1]) {
				// skip - dont add, make height larger for current severity.
				$height++;
			}
			else {
				// add row now, reset height for next severity. Heights based on consecutive same severity, based as percentage.
				switch ($severities[$i]) {
					case 3:
						echo '<tr bgcolor="'.BG_RED.'" height="'.(($height/sizeof($severities))*100).'%"><td class="severitytd">'.$severities[$i].'</td></tr>';
					break;
					case 2:
						echo '<tr bgcolor="'.BG_ORANGE.'" height="'.(($height/sizeof($severities))*100).'%"><td class="severitytd">'.$severities[$i].'</td></tr>';
					break;
					case 1:
						echo '<tr bgcolor="'.BG_GREEN.'" height="'.(($height/sizeof($severities))*100).'%"><td class="severitytd">'.$severities[$i].'</td></tr>';
					break;
					default:
						echo '<tr style="color:'.BG_GREY.'" bgcolor="'.BG_GREY.'" height="'.(($height/sizeof($severities))*100).'%"><td class="severitytd">'.$severities[$i].'</td></tr>';
					break;
				}
				$height = 1;
			}
		}	
	}
	
	private function addCellRows(array $severities) {
		foreach ($severities as $sev) {
			switch ($sev) {
				case 3: // bg red ff9999
					echo '<tr bgcolor="'.BG_RED.'">'; 
				break;
				case 2: // bg orange ffbb99
					echo '<tr bgcolor="'.BG_ORANGE.'">'; 
				break;
				case 1: // bg light green ccffcc
					echo '<tr bgcolor="'.BG_GREEN.'">'; 
				break;
				default: // bg white ffffff
					echo '<tr bgcolor="'.BG_WHITE.'">'; 
				break;
			}
			for ($i=0; $i < NUMBER_OF_CELL_COLUMNS; $i++) {echo '<td class="cell"></td>';}
			echo '</tr>';
		}	
	}
	
	public function getTableIds(){
		$result = array($this->dateAndTimeTable->getTableId(),
						$this->respRateTable->getTableId(),
						$this->spO2Table->getTableId(),
						$this->tempTable->getTableId(),
						$this->bpTable->getTableId(),
						$this->heartRateTable->getTableId(),
						$this->avpuTable->getTableId(),
						$this->bldSugarTable->getTableId(),
						$this->totalScoreTable->getTableId(),
						$this->addParamsTable->getTableId(),
						$this->bottomTable->getTableId()
						);

		return array($result);
    }
    
    public function getTableParams(){
    	$result = array();
   
    	array_push($result,$this->dateAndTimeTable->jsonSerialize());
    	array_push($result,$this->respRateTable->jsonSerialize());
    	array_push($result,$this->spO2Table->jsonSerialize());
    	array_push($result,$this->tempTable->jsonSerialize());
    	array_push($result,$this->bpTable->jsonSerialize());
    	array_push($result,$this->heartRateTable->jsonSerialize());
    	array_push($result,$this->avpuTable->jsonSerialize());
    	array_push($result,$this->bldSugarTable->jsonSerialize());
    	array_push($result,$this->totalScoreTable->jsonSerialize());
    	array_push($result,$this->addParamsTable->jsonSerialize());
    	array_push($result,$this->bottomTable->jsonSerialize());
    	
    	return $result;
    }
}




?>