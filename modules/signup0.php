<?php

session_start();

?>

<!DOCTYPE html>
<html>
<head>
	<title>Basic Details</title>
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
	<form action="signup1.php" method="POST">
		Name:
		<input type="text" name="name">
		Mobile:
		<input type="number" name="mobile">
		Gender:
		<input type="radio" name="gender" value="male"> Male<br>
		<input type="radio" name="gender" value="female"> Female<br>
		Date of Birth:
		<input type="Date" name="dob">

		<input type="submit" name="">
	</form>
</body>
</html>