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
if(!isset($_SESSION['oid'])){
	echo "
	<script type='text/javascript'>
		alert('Please Select Order');
		document.location.href = '../modules/list_delivery.php';
	</script>";	
}
if($_SESSION['status']!="Picking up the order from chef"){
	echo "
	<script type='text/javascript'>
		alert('Please Select Order');
		document.location.href = '../modules/list_delivery.php';
	</script>";	
}

$oid = $_SESSION['oid'];

$qry = "select * from `order` where oid=$oid";
//echo $qry;
$result = mysqli_query($conn,$qry);
while($row = mysqli_fetch_assoc($result)){
	$mark=explode(',', $row['fids']);
   foreach($mark as $out) {
      $fid = $out;
      $qry1 = "select * from food where fid = $fid";
      $result1 = mysqli_query($conn,$qry1);
		while($row1 = mysqli_fetch_assoc($result1)){
			echo $row1['fname']."<br>";
		}
   }
	echo "<button><a href='../assets/took_order.php'>Order Collected</a></button>";
}

?>