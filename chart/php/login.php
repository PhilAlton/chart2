<html>
	<head>
		<meta charset="UTF-8">
        <meta name="author" content="Ellen Barber">
		<title>Login</title>
        <link href="../css/login.css" rel="stylesheet" type="text/css" />
        <script src="../importedLibraries/jquery-1.11.2.min.js"></script>
        <?php require("../php/controller.php");?>
	</head>

	<body>
    	<div id="Header">
        	<img src="../images/logoleft.png" alt="helix_logo_left" border="0" id="logoLeft" onclick=""/>
        	<img src="../images/logoRight.png" alt="helix_logo_right" border="0" id="logoRight" onclick=""/>
    	</div>
    	<div id="Content">
			<div id="login">
				<h1>Sign In</h1>
				<form name="login">
					<p><input type="text" name="username" id="username" value="" placeholder="Username"></p>
					<p><input type="password" name="password" id="password" value="" placeholder="Password"></p>
					<h2 id='invalidLogin'>Invalid username or password</h2>
					<p class="submit" id="submit"><input type="button" onclick="tryLogin()" name="commit" value="Login" class="clickable"></p>
				</form>
			</div>
    	</div>
	</body>
	<script type="text/javascript">
		function tryLogin(){
			var username = document.getElementById("username");
			var password = document.getElementById("password");
			var data = {'action':'login', 'username':username.value, 'password':password.value};
			$.ajax({
				type: "POST",
				url:'controller.php',
				data: data,
				success: function(result){
					result = JSON.parse(result);
					console.log(result);
					var msg = document.getElementById("invalidLogin");
					if(result == false){
						msg.style.display = "block";
					}else{
						window.location.href = "selectPatient.php?chsi="+result;
					}
				}
			});
		}

	</script>
</html>