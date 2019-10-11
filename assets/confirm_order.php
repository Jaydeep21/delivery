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
	$qry1 = "select * from `order` as o , chef as c where o.oid=$oid and c.chid=o.chid";
	$result1 = mysqli_query($conn,$qry1);
	$row1 = mysqli_fetch_assoc($result1);
	$lattitude = $row1['clattitude'];
	$longitude = $row1['clongitude'];
?>
<script type="text/javascript">
	window.onload = function() {
	   localStorage.setItem("longitude",<?php echo $lattitude ?>);
	   localStorage.setItem("lattitude",<?php echo $longitude ?>);
	   document.location.href = "../modules/route_to_chef.php";
}

</script>

<?php }
else{
	echo "Something went wrong";
}


?>