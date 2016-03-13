function loadTables(params){

	var numOfVisibleCols = 12;
	var numOfColsLeft = numOfVisibleCols;
	var numOfColsRight = numOfVisibleCols;
	//console.log(params);
	params["dataLeft"]= reMapKeys(params["dataLeft"], params["multiData"]);
	params["dataRight"]= reMapKeys(params["dataRight"], params["multiData"]);
	
	var dataLengthLeft = params["dataLeft"].length;
	var dataLengthRight = params["dataRight"].length;          
	
	if(params["multiData"]){   
		dataLengthLeft = params["dataLeft"][Object.keys(params["dataLeft"])[0]].length;
		dataLengthRight = params["dataRight"][Object.keys(params["dataRight"])[0]].length;
	}         
	                

	if(dataLengthLeft > numOfVisibleCols){
		numOfColsLeft = dataLengthLeft;
	}
	if(dataLengthRight > numOfVisibleCols){
		numOfColsRight = dataLengthRight;                                                      
	}
	
	
	setGridData(params["dataLeft"], params["id"]+"Left", params["stepSize"], params["minVal"], params["maxVal"], params["highlights"], params["multiData"], numOfColsLeft, dataLengthLeft, numOfVisibleCols, params["sections"]);
	setGridData(params["dataRight"], params["id"]+"Right", params["stepSize"], params["minVal"], params["maxVal"], params["highlights"], params["multiData"], numOfColsRight, dataLengthRight, numOfVisibleCols, params["sections"]);
}                                                                                                                                                          
                                                                                                                 
function setGridData(dataSet, canvasID, stepSize, minVal, maxVal, highlights, multiData, numOfCols, dataLength, numOfVisibleCols, sections){
	var gridData = {'data':dataSet, 'step':stepSize, 'min':minVal, 'max':maxVal, 'highlights':highlights, 'multiData':multiData, 'numOfCols':numOfCols, 'dataLength':dataLength, 'numOfVisibleCols':numOfVisibleCols, 'sections':sections};
	
	var json = JSON.stringify(gridData);                                                                              
	
	$("#"+canvasID).data('gridData',json);

	drawObsGrid(canvasID);
}

function getGridData(canvasID){
	var json = $("#"+canvasID).data('gridData');                                                        
	var gridData = jQuery.parseJSON (json);
	
	gridData['data'] = reMapKeys(gridData['data'], gridData["multiData"]);
	
	return gridData;
	
}

function resizeScrollbar(){
	var scrollbarOverflow = document.getElementById("scrollContentOverflow");
	var dateGrid = document.getElementById("dateAndTimeLeft");
	
	scrollbarOverflow.parentElement.style.width = dateGrid.parentElement.offsetWidth;
	scrollbarOverflow.style.width = dateGrid.offsetWidth;

	scrollbarOverflow.parentElement.style.left= $(dateGrid.parentElement).offset().left;
}

function reMapKeys(dataSet, multiData){
	if(!multiData){
		dataSet = $.map(dataSet, function(el) { return el });
	}else{
		for (var key in dataSet) {
			if(dataSet.hasOwnProperty(key)){
				dataSet[key] = $.map(dataSet[key], function(el) { return el });
			}
		}
	}
	return dataSet;
}

function redrawData(){
	drawObsGrid("dateAndTimeRight");
	drawObsGrid("tempRight");
	drawObsGrid("BPRight");
	drawObsGrid("heartRateRight");
	drawObsGrid("bloodSugarRight");
	drawObsGrid("totalScoreRight");
	drawObsGrid("respRateRight");
	drawObsGrid("spO2Right");
	drawObsGrid("avpuRight");
	
	drawObsGrid("dateAndTimeLeft");
	drawObsGrid("tempLeft");
	drawObsGrid("BPLeft");
	drawObsGrid("heartRateLeft");   
	drawObsGrid("bloodSugarLeft");
	drawObsGrid("totalScoreLeft");
	drawObsGrid("respRateLeft");
	drawObsGrid("spO2Left");
	drawObsGrid("avpuLeft");
	resizeScrollbar();
}

function getTextX(scaleX){
	var x = scaleX/2;
		
	if(getInternetExplorerVersion() > -1){
		x= scaleX;
	}
	return x;
}



function drawObsGrid(canvasID, o2){
	//get canvas
	var canvas = document.getElementById(canvasID);
	var context = canvas.getContext("2d");
	
	//get data
	var gridData = getGridData(canvasID);
                                   
	//canvas default dimensions
	canvas.width = canvas.parentElement.offsetWidth;
	canvas.height = canvas.parentElement.offsetHeight;
	
	if(gridData['dataLength'] > gridData['numOfVisibleCols']){      
		var cellWidth = canvas.width / gridData['numOfVisibleCols'];
		canvas.width = cellWidth * gridData['numOfCols'];
	}
	
	context.fillStyle = "black";     
    context.font = "14pt Helvetica";
    
    drawGridLines(canvasID);
    context.textAlign="center";
    context.textBaseline = 'middle';
    
    if((canvasID == "tempLeft") || (canvasID == "tempRight") || (canvasID == "heartRateLeft") || (canvasID == "heartRateRight")){
		context.strokeStyle="grey";
		context.fillStyle = "black";
		plotGraphData(canvasID, false);
	}else if((canvasID == "dateAndTimeLeft")|| (canvasID == "dateAndTimeRight")){
		//console.log("in");
		context.strokeStyle="grey";
		context.fillStyle = "black";
		plotDateAndTime(canvasID);
		if(canvasID == "dateAndTimeLeft"){
			resizeScrollbar();
		}
	}else if((canvasID =="totalScoreLeft")||(canvasID =="totalScoreRight")||(canvasID =="bloodSugarLeft")||(canvasID =="bloodSugarRight")){
		plotSingleRow(canvasID);
	}else if((canvasID == "BPLeft")||(canvasID == "BPRight")){
		context.strokeStyle="grey";
		context.fillStyle = "black";
		plotGraphData(canvasID, gridData['data']['sistBP']);
		context.strokeStyle="blue";
		context.fillStyle = "black";
		plotGraphData(canvasID, gridData['data']['diastBP']);
		context.strokeStyle="black";
		plotBP(canvasID);
		
	}else if((canvasID == "respRateLeft")||(canvasID == "respRateRight")){
		context.strokeStyle="grey";
		context.fillStyle = "black";
		plotDataSections(canvasID, false);
	}else if((canvasID == "spO2Left")||(canvasID == "spO2Right")){
		context.strokeStyle="grey";
		context.fillStyle = "black";
		plotOxygenData(canvasID);
	}else if((canvasID == "avpuLeft")||(canvasID == "avpuRight")){
		context.fillStyle = "black";
		plotAlertness(canvasID);
	}
}

function plotOxygenData(canvasID){
	//get canvas
	var canvas = document.getElementById(canvasID);
	var context = canvas.getContext("2d");
	
	//get data
	var gridData = getGridData(canvasID);
	plotDataSections(canvasID, gridData['data']['spO2']);
	
	var data = gridData['data']['o2FlowRate'];
	
	context.font = "13pt Helvetica";

	if(gridData['dataLength'] > 0){
		var scaleY = canvas.height/(gridData['max'] - gridData['min']);;
		var scaleX = canvas.width / gridData['numOfCols'];
		
		context.beginPath();
	
		var x = scaleX/2;
		var y = canvas.height-(scaleY/2);
		var textX = getTextX(scaleX);
		
		context.moveTo(x,y);
		
		context.fillStyle = "black";
		console.log(gridData['data']);
		context.fillText(data[0],textX,y);
		
		for (var i = 1; i < gridData['dataLength']; i++) {
			x = (scaleX/2) + (i * scaleX);
			textX = getTextX(scaleX) + (i * scaleX);
			
			context.fillStyle = "black";
			context.fillText(data[i],textX,y);
		   
		}
		context.stroke();
	}
	
}

function drawGridLines(canvasID){         
	//get canvas
	var canvas = document.getElementById(canvasID);
	var context = canvas.getContext("2d");
	
	//get data
	var gridData = getGridData(canvasID);
	
	var scaleY = canvas.height / (gridData['max'] - gridData['min']);
    var scaleX = canvas.width / gridData['numOfCols'];
	
	context.strokeStyle="grey";
    context.beginPath();
    
    //draw vertical grid lines
	for (i = 1; i <= gridData['numOfCols']; i++) {
		var x = i * scaleX;
		context.moveTo(x, 0);
		context.lineTo(x, canvas.height);
	}
	
	//draw horizontal grid lines
	var count = 0;
	for(i = gridData['max']; i >= gridData['min']; i -= gridData['step']){

		var y = (scaleY * count * gridData['step']);
		context.moveTo(0, y)
		context.lineTo(canvas.width, y);

		if(gridData['highlights'].hasOwnProperty(count)){
			context.fillStyle="#"+ gridData['highlights'][count];
			context.fillRect(0,y-(scaleY*gridData['step']),canvas.width, scaleY*gridData['step']);
		}
		
		count++;
	}
	context.stroke();
	
}

function plotSingleRow(canvasID, totalScore) {
	var canvas = document.getElementById(canvasID);
	var context = canvas.getContext("2d");
	
	var gridData = getGridData(canvasID);
	var total = false;
	
	if((canvasID =="totalScoreLeft")||(canvasID =="totalScoreRight")){
		total = true;
	}
	
	var data = gridData['data'];
	context.font = "14pt Helvetica";
//console.log(total);
	if(gridData['dataLength'] > 0){
		var scaleY = canvas.height;
		var scaleX = canvas.width / gridData['numOfCols'];
		
		context.beginPath();
	
		var x = scaleX/2;
		var y = scaleY/2;
		var textX = getTextX(scaleX);
		
		
		context.moveTo(x,y);

		if(total){
			context.font = "20pt Helvetica";
			//console.log(total+"    "+gridData['data'][0]);
			data = gridData['data'][0]['score'];
			//console.log(gridData['data'][1]);
			if(gridData['data'][0]['esc'] === "No"){
				if(gridData['data'][0]['score']>0){
					context.fillStyle = "green";
					context.fillRect(0,0,scaleX, canvas.height);
				}
			}else if(gridData['data'][0]['esc'] === "Esc"){
				context.fillStyle = "orange";
				context.fillRect(0,0,scaleX, canvas.height);
			}else if(gridData['data'][0]['esc'] === "MET"){
				context.fillStyle = "red";
				context.fillRect(0,0,scaleX, canvas.height);
			}
		}else{
			data = gridData['data'][0];
		}
		
		context.fillStyle = "black";
		context.fillText(data,textX,y);
	//console.log(gridData['data']);
		
		for (var i = 1; i < gridData['dataLength']; i++) {
			x = (scaleX/2) + (i * scaleX);
			textX = getTextX(scaleX) + (i * scaleX);
			xFill = (i * scaleX);
			if(total){
				data = gridData['data'][i]['score'];
				if(gridData['data'][i]['esc'] == "No"){
					if(gridData['data'][i]['score']>0){
						context.fillStyle = "green";
						context.fillRect(xFill,0,scaleX, canvas.height);
					}
				}else if(gridData['data'][i]['esc'] == "Esc"){
					context.fillStyle = "orange";
					context.fillRect(xFill,0,scaleX, canvas.height);
				}else if(gridData['data'][i]['esc'] == "MET"){
					context.fillStyle = "red";
					context.fillRect(xFill,0,scaleX, canvas.height);
				}
			}else{
				data = gridData['data'][i];
			}
			
			context.fillStyle = "black";
			context.fillText(data,textX,y);
		   
		}
		context.stroke();
	}
}

function sortDataPointIntoSection(dataPoint, sectionsArr){
	var dataPointSet = false;
	var keysArr = Object.keys(sectionsArr);
	keysArr = keysArr.sort(function(a, b){return parseInt(a)-parseInt(b)});
	var numOfSections = keysArr.length;
	var lowestKey = keysArr[0];
	var highestKey = keysArr[numOfSections-1];
	
	for (var key in sectionsArr) {
		var intKey = parseInt(key);
		if(sectionsArr.hasOwnProperty(key)){
			var section = sectionsArr[key];
			if(!dataPointSet){
				if(intKey==lowestKey){
					if((dataPoint <= section[0]) && (dataPoint <= section[1])){
						dataPoint = key;
						dataPointSet = true;
					}
				}else if(intKey==highestKey){
					if((dataPoint >= section[0]) && (dataPoint >= section[1])){
						dataPoint = key;
						dataPointSet = true;
					}
				}else{
					if((dataPoint >= section[0]) && (dataPoint <= section[1])){
						dataPoint = key;
						dataPointSet = true;
					}
				}
			}
		}
			
	}
	
	return dataPoint;
}

function getInternetExplorerVersion() {

    var rv = -1;

    if (navigator.appName == 'Microsoft Internet Explorer') {

        var ua = navigator.userAgent;
        var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");

        if (re.exec(ua) != null)

        rv = parseFloat( RegExp.$1 );

    }

    else if (navigator.appName == 'Netscape') {

        var ua = navigator.userAgent;

        var re  = new RegExp("Trident/.*rv:([0-9]{1,}[\.0-9]{0,})");

        if (re.exec(ua) != null)

        rv = parseFloat( RegExp.$1 );

    }

    return rv;

}



function plotDataSections(canvasID, data) {
	var canvas = document.getElementById(canvasID);
	var context = canvas.getContext("2d");
	
	var gridData = getGridData(canvasID);
	
	if(!data){
		data = gridData['data'];
	}
	
	if(gridData['dataLength'] > 0){
		var scaleY = canvas.height / (gridData['max'] - gridData['min']);
		var scaleX = canvas.width / gridData['numOfCols'];
		
		context.beginPath();
		
		var dataPoint = sortDataPointIntoSection(data[0], gridData['sections']);
		var x = scaleX/2;
		var textX = getTextX(scaleX);
		
		var y = (gridData['max'] - dataPoint) * scaleY;
		//console.log(scaleX);
		context.font = "11pt Helvetica";
		context.moveTo(x,y);
	
		context.fillText(data[0],textX,y);
		
		for (var i = 1; i < gridData['dataLength']; i++) {
			dataPoint = sortDataPointIntoSection(data[i], gridData['sections']);
			//console.log(dataPoint);
			y = (gridData['max'] - dataPoint) * scaleY;
			x = (scaleX/2) + (i * scaleX);
			textX = getTextX(scaleX) + (i * scaleX);
			
			context.fillText(data[i],textX,y);
		   
		}
		context.stroke();
	}
}


function plotDateAndTime(canvasID) {
	var canvas = document.getElementById(canvasID);
	var context = canvas.getContext("2d");
	
	var gridData = getGridData(canvasID);

	if(gridData['dataLength'] > 0){
		
		var scaleY = canvas.height / (gridData['max'] - gridData['min']);
		var scaleX = canvas.width / gridData['numOfCols'];
		
		context.beginPath();
	
		var x = scaleX/2;
		var textX = getTextX(scaleX);
		var yDate = (scaleY/2);
		var yTime = (scaleY/2)*3;
		
		//console.log(scaleY);
		
		context.font = "11pt Helvetica";
		context.moveTo(x,yDate);
		
		//console.log(gridData['data']);
		var dateSections = gridData['data']['date'][0].split("/");
		var date = dateSections[0]+"/"+dateSections[1];
	//	console.log(date);
		var timeSections = gridData['data']['time'][0].split(":");
		var time = timeSections[0]+":"+ timeSections[1];
	
		context.fillText(date,textX,yDate);
		context.fillText(time,textX,yTime);
		
		
		for (var i = 1; i < gridData['dataLength']; i++) {
			
			x = (scaleX/2) + (i * scaleX);
			textX = getTextX(scaleX) + (i * scaleX);
			
			dateSections = gridData['data']['date'][i].split("/");
			date = dateSections[0]+"/"+dateSections[1];
			
			timeSections = gridData['data']['time'][i].split(":");
			time = timeSections[0]+":"+ timeSections[1];
	
			context.fillText(date,textX,yDate);
			context.fillText(time,textX,yTime);
		   
		}
		context.stroke();
	}
}

function getTextY(y, dataPoint, maxVal, stepSize){
	if(dataPoint > (maxVal-stepSize)){
		y=y+20;
	}else{
		y=y-20;
	}
	return y;
}


function plotGraphData(canvasID, data){
	var canvas = document.getElementById(canvasID);
	var context = canvas.getContext("2d");
	
	var gridData = getGridData(canvasID);
	
	var dataPointsArr = gridData['data'];
	//console.log(data);
	if(data != false){
		dataPointsArr = data;
	}

	if(dataPointsArr.length > 0){
		var scaleY = canvas.height / (gridData['max'] - gridData['min']);
		var scaleX = canvas.width / gridData['numOfCols'];
		
		context.beginPath();
		
		var dataPoint = validateDataPoint(dataPointsArr[0], gridData['max'], gridData['min']); 
	
		var x = scaleX/2;
		var textX = getTextX(scaleX);
		var y = (gridData['max'] - dataPoint) * scaleY;
		var textY = getTextY(y, dataPoint, gridData['max'], gridData['step']);
		
		
	
		context.moveTo(x,y);
		context.fillRect(x-2, y-2,4,4);
		context.fillText(dataPointsArr[0],textX,textY);
	
																											  
		for (i = 1; i < gridData['dataLength']; i++) {
			dataPoint = validateDataPoint(dataPointsArr[i], gridData['max'], gridData['min']);
			y = (gridData['max'] - dataPoint) * scaleY;
			x = (scaleX/2) + (i * scaleX);
			textX = getTextX(scaleX) + (i * scaleX);
			textY = textY = getTextY(y, dataPoint, gridData['max'], gridData['step']);
			
			if(!(dataPointsArr[i] == "")){
				
				context.fillRect(x-2, y-2,4,4);
				context.lineTo(x, y);
				context.fillText(dataPointsArr[i],textX,textY);
			}
		}
		context.stroke();
	}
}

function plotBP(canvasID){
	var canvas = document.getElementById(canvasID);
	var context = canvas.getContext("2d");
	
	var gridData = getGridData(canvasID);
	
	var scaleY = canvas.height / (gridData['max'] - gridData['min']);
    var scaleX = canvas.width / gridData['numOfCols'];
    
    context.beginPath();
	
	var sistPoint = validateDataPoint(gridData['data']['sistBP'][0], gridData['max'], gridData['min']); 
	var diastPoint = validateDataPoint(gridData['data']['diastBP'][0], gridData['max'], gridData['min']); 

	var x = scaleX/2;
	
	var sistY = (gridData['max'] - sistPoint) * scaleY;
	var diastY = (gridData['max'] - diastPoint) * scaleY;
	context.setLineDash([3, 6]);
	context.moveTo(x,sistY);
	context.lineTo(x, diastY);

	                                                                                                      
	for (i = 1; i < gridData['dataLength']; i++) {
		
		sistPoint = validateDataPoint(gridData['data']['sistBP'][i], gridData['max'], gridData['min']); 
		diastPoint = validateDataPoint(gridData['data']['diastBP'][i], gridData['max'], gridData['min']); 
		
		sistY = (gridData['max'] - sistPoint) * scaleY;
		diastY = (gridData['max'] - diastPoint) * scaleY;
		x = (scaleX/2) + (i * scaleX);

		context.setLineDash([3, 6]);
	    context.moveTo(x,sistY);
	    context.lineTo(x, diastY);
	}
	context.stroke();
}

function plotAlertness(canvasID){
	var canvas = document.getElementById(canvasID);
	var context = canvas.getContext("2d");
	
	var gridData = getGridData(canvasID);

	if(gridData['dataLength'] > 0){
		
		var scaleY = canvas.height / (gridData['max'] - gridData['min']);
		var scaleX = canvas.width / gridData['numOfCols'];
		
		context.beginPath();
	
		var x = scaleX/2;
		var textX = getTextX(scaleX);
		var yA = (scaleY/2);
		var yVPU = (scaleY/2)*3;
		var y = yA;
		
		context.font = "11pt Helvetica";
		context.moveTo(x,yA);
		
		if(gridData['data'][0] == "A"){
			
			y=yA;
		}else{
			y=yVPU;
		}
	//console.log(y);
		
		context.fillText(gridData['data'][0],textX,y);
		
		for (var i = 1; i < gridData['dataLength']; i++) {
			
			x = (scaleX/2) + (i * scaleX);
			textX = getTextX(scaleX) + (i * scaleX);
			if(gridData['data'][i] == "A"){
				y=yA;
			}else{
				y=yVPU;
			}
			
			context.fillText(gridData['data'][i],textX,y);
		   
		}
		context.stroke();
	}
}

function validateDataPoint(dataPoint, maxVal, minVal){
	if(dataPoint > maxVal){
		dataPoint = maxVal;
	}else if(dataPoint < minVal){
		dataPoint = minVal;
	}
	return dataPoint;
}

function syncScrolls(target){
	var scrollPos = target.scrollLeft;
	//console.log("scrolling");
	var tableIds = getTableIds();
	tableIds.push("scrollContentOverflow");
	var table = false;
	
	for(var i = 0; i<tableIds.length; i++){
		var elementId = tableIds[i];
		if(elementId != "scrollContentOverflow"){
			elementId = elementId+"Left";
			table = true;
		}
		var element = document.getElementById(elementId);
		
		if(target != element.parentElement){
			element.parentElement.scrollLeft = scrollPos;
		}
		
		 
	}

}

function isTouchDevice(){
	try{
		document.createEvent("TouchEvent");
		return true;
	}catch(e){
		return false;
	}
}



                            

 
