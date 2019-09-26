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
if($_SESSION['status']!="Order Picked up from chef"){
	echo "
	<script type='text/javascript'>
		alert('Please Select Order');
		document.location.href = '../modules/list_delivery.php';
	</script>";	
}
$_SESSION['status'] = "Order Delivered";

$oid = $_SESSION['oid'];

$qry = "update `order` set  status='Order Delivered' where oid=$oid";

$result = mysqli_query($conn,$qry);
if($result){
	header("location:../modules/take_delivery_review.php");
}
else{
	echo "Opps Something went wrong";
}

?>