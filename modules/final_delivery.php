<?php
session_start();

include("../asstes/connection.php");
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

$oid = $_SESSION['oid'];

$qry = "select * from `order` AS o, customer AS c where o.oid=$oid and c.cid=o.cid";
$result = mysqli_query($conn,$qry);
while($row = mysqli_fetch_assoc($result)){
	echo "<button>Get Customer Route</button>";
	echo "<p>$row['address']</p>";
	echo "<button><a href='../assets/order_placed.php'></a></button>";
}
?>