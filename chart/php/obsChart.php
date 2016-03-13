<html>
    <head>
        <meta charset="UTF-8">
        <meta name="author" content="Ellen Alton & Ben Thurlow">
        <title>Chart</title>
        <link rel="stylesheet" href="../css/chart.css" type="text/css">
        
        
		
    </head>
	
    <body  onload="loadObsGrids()">
    	<div id="Header">
        	<img src="../images/logoleft.png" alt="helix_logo_left" border="0" id="logoLeft" onclick=""/>
        	<img src="../images/logoRight.png" alt="helix_logo_right" border="0" id="logoRight" onclick=""/>
    	</div>
		<?php require("../php/controller.php");?>
		<div id="obsScrollbar" onscroll="syncScrolls(this)">
			<div id="scrollContentOverflow">
			</div>
		</div>
	</body>
	
	<script type="text/javascript">
			function loadObsGrids(){
				window.addEventListener('resize', redrawData, false);
				var tableParams = jQuery.parseJSON ('<?php echo $tableParamsArray; ?>');

				for (var key in tableParams) {
					if(tableParams.hasOwnProperty(key)){
						loadTables(tableParams[key]);
					}
				}
				
			}
			
			
			
			function getTableIds(){
				var tableIds = jQuery.parseJSON ('<?php echo $tableIds; ?>');
				tableIds = reMapKeys(tableIds["0"]);
				return tableIds;
			}

			
	</script>
</html>

