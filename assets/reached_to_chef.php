<?php
session_start();

include("connection.php");
if(!isset($_SESSION['did'])){
	echo "
	<script type='text/javascript'>
		alert('Please login');
		document.location.href = '../modules/signup0.php';
	</script>";
}
if(!isset($_SESSION['oid'])){
	echo "
	<script type='text/javascript'>
		alert('Please Select Order');
		document.location.href = '../modules/list_delivery.php';
	</script>";	
}

$_SESSION['status'] = "Picking up the order from chef";

$oid = $_SESSION['oid'];

$qry = "update `order` set  status='Picking up the order from chef' where oid=$oid";

$result = mysqli_query($conn,$qry);
if($result){
	header("location:../modules/order_details.php");
}
else{
	echo "Opps Something went wrong";
}

?>