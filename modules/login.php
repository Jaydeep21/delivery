<?php

session_start();

?>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<style type="text/css">
		input[type=number]::-webkit-inner-spin-button, 
		input[type=number]::-webkit-outer-spin-button { 
		    -webkit-appearance: none;
		    -moz-appearance: none;
		    appearance: none;
		    margin: 0; 
		}
	</style>
</head>

<body>
	<form method="POST" action="../assets/login.php">
		Phone Number:
		<input type="number" name="moblie">
		Password:
		<input type="text" name="password">
		<input type="submit" name="submit">
		<button>Send OTP</button>
	</form>
</body>
</html>