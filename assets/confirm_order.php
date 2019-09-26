<?php

session_start();

include("../assets/connection.php");
if(!isset($_SESSION['did'])){
	echo "
	<script type='text/javascript'>
		alert('Please login');
		document.location.href = '../modules/signup0.php';
	</script>";
}

$oid = $_GET['oid'];
$did = $_SESSION['did'];
$_SESSION['oid'] = $oid;
$qry = "update `order` set did=$did , status='Order taken accepted by delivery boy' where oid=$oid";

$result = mysqli_query($conn,$qry);
if($result){
	header("location:../modules/route_to_chef.php");
}
else{
	echo "Something went wrong";
}


?>