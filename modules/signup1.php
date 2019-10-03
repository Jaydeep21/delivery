<?php

session_start();
$_SESSION['name'] = $_POST['name'];
$_SESSION['mobile'] = $_POST['mobile'];
$_SESSION['gender'] = $_POST['gender'];
$_SESSION['dob'] = $_POST['dob'];
$_SESSION['password'] = $_POST['password'];
?>
<!DOCTYPE html>
<html>
<head>
	<title>Mobile Verification</title>
</head>
<style type="text/css">
	input[type=number]::-webkit-inner-spin-button, 
		input[type=number]::-webkit-outer-spin-button { 
		    -webkit-appearance: none;
		    -moz-appearance: none;
		    appearance: none;
		    margin: 0; 
		}
</style>
<body>
	<form method="POST" action="signup2.php">
		Enter otp:
		<input type="text" name="otp">
		<input type="submit" name="">
	</form>
</body>
</html>