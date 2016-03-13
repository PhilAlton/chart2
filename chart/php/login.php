<html>
	<head>
		<meta charset="UTF-8">
        <meta name="author" content="Ellen Barber">
		<title>Login</title>
        <link href="../css/login.css" rel="stylesheet" type="text/css" />
        <?php require("../php/controller.php");?>
	</head>

	<body>
    	<div id="Header">
        	<img src="../images/logoleft.png" alt="helix_logo_left" border="0" id="logoLeft" onclick=""/>
        	<img src="../images/logoRight.png" alt="helix_logo_right" border="0" id="logoRight" onclick=""/>
    	</div>
    	<div id="login">
      		<h1>Sign In</h1>
      		<form method="post" action="controller.php" name="login">
            	<input type="hidden" name="login" id="login" value="true">
        		<p><input type="text" name="username" id="username" value="" placeholder="Username"></p>
        		<p><input type="password" name="password" id="password" value="" placeholder="Password"></p>
                
                <p class="submit" id="submit"><input type="submit" name="commit" value="Login" class="clickable"></p>
      		</form>
    	</div>
	</body>
</html>