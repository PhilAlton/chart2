<html>
	<head>
		<meta charset="UTF-8">
        <meta name="author" content="Ellen Barber">
		<title>Select Patient</title>
        <link href="../css/search.css" rel="stylesheet" type="text/css" />
        <?php require("../php/controller.php");?>
	</head>

	<body>
    	<div id="Header">
        	<img src="../images/logoleft.png" alt="helix_logo_left" border="0" id="logoLeft" onclick=""/>
        	<img src="../images/logoRight.png" alt="helix_logo_right" border="0" id="logoRight" onclick=""/>
    	</div>
    	<div id="Content">
			<div id="selectPatient" class="formBox">
				<h1 class="formBoxHeader">Search Patients <span style="float:right;">Select Patient</span></h1>
				<div id="container">
				<form name="selectPatientForm">
						<p><div id="searchParams">
						<div id="paramsContainer">
							<p><div><label for="hosNum">Hospital Number: </label><input type="text" id="hosNum" onkeypress="setSearchBtn()"/></div></p>
							<p><div><label for="firstName">First Name: </label><input type="text" id="firstName" onkeypress="setSearchBtn()"/></div></p>
							<p><div><label for="lastName">Last Name: </label><input type="text" id="lastName" onkeypress="setSearchBtn()"/></div></p>
							<p><div><label for="dob">Date of Birth: </label><input type="text" id="dob" onkeypress="setSearchBtn()"/></div></p>
							</div>
							<p><div class="buttons" id="searchBtnContainer">
								<input class="searchButton" id="searchBtn" type="button" value="Search" onclick="searchPatients()" disabled />
							</div></p>
						</div></p>
						<p><div id="searchResults">
							<p><label for="results">Search Results: </label><div id="resultsContainer">
							<table id="searchResultsTable">
								<tr id="tableHeader">
									<td>Hospital Number</td>
									<td>Name</td>
									<td>DOB</td>
								</tr>
							</table></div></p>
							<label id="noResults">No Patients Found</label>
							<p><div class="buttons">
								<input type="button" id="submitBtn" onclick="setPatient()" name="commit" value="Submit" class="submitButton" disabled>
							</div></p>
						</div></p>
					
					
				</form>
				</div>
			</div>
    	</div>
	</body>
	
	<script type="text/javascript">
			
			function searchPatients(){
				var hosNum = document.getElementById("hosNum");
				var firstName = document.getElementById("firstName");
				var lastName = document.getElementById("lastName");
				var dob = document.getElementById("dob");
				var searchParams = {'action':"searchPatients","hosNum":hosNum.value,"firstName":firstName.value,"lastName":lastName.value, "dob":dob.value};
				//console.log(searchParams);
				if(hosNum.value=="" && firstName.value=="" && lastName.value=="" && dob.value==""){
					//please input some search parameters
				}else{
					$.ajax({
					  type: "POST",
					  url:'controller.php',
					  data: searchParams,
					  success: function(results){
						var results = JSON.parse(results);
						var table = document.getElementById("searchResultsTable");
						$("#searchResultsTable tr:not(:first)").remove();
						count = 1;
						var noResults = document.getElementById("noResults");
						console.log(Object.keys(results).length);
						if((Object.keys(results).length)<1){
							noResults.style.display="block";
						}else{
							noResults.style.display="none";
							
						}
						for (var patient in results) {
							if(results.hasOwnProperty(patient)){
								patData = results[patient];
								var row = table.insertRow(count);
								count++;
								$(row).data('ref',patData["Field01"]);
								$(row).click(function() {
									selectPatient(this);
								});
								
								
								var hosNum = row.insertCell(0);
								var name = row.insertCell(1);
								var dob = row.insertCell(2);
								
								// Add some text to the new cells:
								hosNum.innerHTML = patData["Field03"];
								name.innerHTML = patData["Field05"]+" "+patData["Field06"];
								dob.innerHTML = patData["Field04"];
							}
						}
						
					  }
					});
				}
			}
			
			function selectPatient(selectedRow){
				var table = document.getElementById("searchResultsTable");
				for (var i = 1, row; row = table.rows[i]; i++) {
				   row.style.background="#FFF";
				}
				
				var patId = $(selectedRow).data('ref');
				selectedRow.style.background="#CEF6F5";
				var btn = document.getElementById("submitBtn");
				$("#submitBtn").data('selected',patId);
				btn.disabled = false;
			}
			
			function setSearchBtn(){
				var btn = document.getElementById("searchBtn");
				btn.disabled = false;
			}
			
			function setPatient(){
				var patId = $("#submitBtn").data('selected');
				var data = {'action':'selectPatient','patId':patId};
				console.log(data);
				$.ajax({
					  type: "POST",
					  url:'controller.php',
					  data: data,
					  success: function(result){
					  	 result = JSON.parse(result);
					  	 window.location.href = "obsChart.php?chsi="+result;
					  }
				});
			}

	</script>
</html>

