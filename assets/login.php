<?php

session_start();
include('connection.php');

$moblie = $_POST['moblie'];
$password = $_POST['password'];

$qry = "select * from delivery where moblie=$moblie and password=$password";

#echo $qry;
$result = mysqli_query($conn,$qry);
if(mysqli_num_rows($result)){
	while ($row = mysqli_fetch_assoc($result)) {
		# code...
		$_SESSION['name'] = $row['dname'];
		$_SESSION['mobile'] = $row['mobile'];
		$_SESSION['gender'] = $row['gender'];
		$_SESSION['dob'] = $row['dob'];
		$_SESSION['password'] =	$row['password'];
		$_SESSION['aadhar'] = $row['aadhar'];
		header("location:../modules/list_delivery.php");
	}
}else{
	echo "<script type='text/javascript'>
		alert('Invalid Credentials');
		document.location.href = '../modules/login.php';
	</script>";
}
?>