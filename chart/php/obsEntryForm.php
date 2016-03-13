<link rel="stylesheet" href="../css/obsEntry.css" type="text/css">
<?php require("../php/controller.php");?>
<head>
</head>

<body>

	<div id="Header">
        	<img src="../images/logoleft.png" alt="helix_logo_left" border="0" id="logoLeft" onclick=""/>
        	<img src="../images/logoRight.png" alt="helix_logo_right" border="0" id="logoRight" onclick=""/>
    </div>

    	<div id="enterObs">
      		<h1>Enter Obs <span style="float:right;">Patient: <?php echo $patient->patName;?></span></h1>
      		
      		<form method="post" action="controller.php" name="enterObs">
      			<input type="hidden" name="addObs" id="addObs" value="<?php echo $patient->patNum; ?>">
				<input type="hidden" name="chsi" id="chsi" value="<?php echo $sessionId; ?>">
				<p><div><label for="bloodPressure">Blood Pressure: </label><input class="dataEntryHalfLeft" type="text" name="bloodPressureSystolic"/><b>/</b><input class="dataEntryHalfRight" type="text" name="bloodPressureDiastolic"/> mm/Hg</div></p>
				<p><div><label for="spO2">Sp0<sub>2</sub>: </label><input class="dataEntry" type="text" name="spO2"/> %</div></p>
				<p><div><label for="o2Flow">Oxygen Flow Rate: </label><input class="dataEntry" type="text" name="o2Flow"/> L</div></p>
				<p><div><label for="o2Percent">Oxygen %: </label><input class="dataEntry" type="text" name="o2Percent"/> </div></p>
				<p><div><label for="heartRate">Heart Rate: </label><input class="dataEntry" type="text" name="heartRate"/> bpm</div></p>
				<p><div><label for="respiratoryRate">Respiratory Rate: </label><input class="dataEntry" type="text" name="respiratoryRate"/> /min</div></p>
				<p><div><label for="temperature">Temperature: </label><input class="dataEntry" type="text" name="temperature"/> &degC</div></p>
				<p><div><label for="urineOutput">Urine Output: </label>
					<select class="dataEntry">
						<option value="over30">&gt30 mls/hr OR PU'd in last 6&deg</option>
						<option value="20to30">&lt30, but &gt20 mls/hr</option>
						<option value="10to20">&lt20, but &gt10 mls/hr</option>
						<option value="under20">&lt10 mls/hr</option>
						<option value="nonein8">not PU'd in last 6&deg</option>
						<option value="nonein12">not PU'd in last 12&deg</option>
					</select>
				</div></p>
				<p><div class="buttons">
					<button class="submitButton" type="submit">Submit</button>
					<a href="<?php echo $cancelRedirect; ?>">
						<input class="cancelButton" type="button" value="Cancel" />
					</a>
				</div></p>
      		</form>
    	</div>
	</body>
		

</body>