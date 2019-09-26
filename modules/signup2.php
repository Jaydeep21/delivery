<?php

session_start();

?>
<!DOCTYPE html>
<html>
<head>
	<title>Aadhar Verification</title>
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
	<form method="POST" enctype="multipart/form-data" action="../assets/delivery.php">
		<input type="number" name="adhar_number" >
		<input type="file" name="adhar_image" >
		<input type="submit" name="submit_adhar">
	</form>
</body>
</html>