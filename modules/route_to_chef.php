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

$oid = $_SESSION['oid'];

$qry = "select * from `order` AS o, chef AS ch where o.oid=$oid and ch.chid=o.chid";
$result = mysqli_query($conn,$qry);
		while($row = mysqli_fetch_assoc($result)){
			echo $row['clattitude'];
			echo $row['clongitude'];
			echo "<button>Yaha de wo url</button>";

			echo "<button><a href='../assets/reached_to_chef.php'>Reached Chef location</a></button>";
			echo "";
		}
?>