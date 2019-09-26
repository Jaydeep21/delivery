<?php

session_start();

include("../assets/connection.php");
if(!isset($_SESSION['did'])){
	echo "
	<script type='text/javascript'>
		alert('Please login');
		document.location.href = 'signup0.php';
	</script>";
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Dilevery Verification</title>
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
	<?php
		$qry = "select * from `order` where did is null";

		$result = mysqli_query($conn,$qry);
		while($row = mysqli_fetch_assoc($result)){

			$customer_id = $row['cid'];
			$chef_id = $row['chid'];
			$qry1 = "select * from chef where cid=$chef_id";
			$result1 = mysqli_query($conn,$qry1);
			echo "<ul style='list-style-type:none;'>";
			while($row1 = mysqli_fetch_assoc($result1)){
				$longitude = $row1['clongitude'];
				$lattitude =  $row1['clattitude'];
				echo "<li>";
				echo $row1['paddress'];
				
				echo "<button><a href='../assets/confirm_order.php?oid=".$row['oid']."'>Confirm Delivery</a></button></li>";
					
			}
			echo "</ul>";
		}
	?>

	<script type="text/javascript">
		document.getElementById("demo").innerHTML = position.longitude;
		document.getElementById("demo1").innerHTML = position.latitude;
		function getLocation() {
		  if (navigator.geolocation) {
		    navigator.geolocation.getCurrentPosition(showPosition);
		  } else { 
		    x.innerHTML = "Geolocation is not supported by this browser.";
		  }
		}

				function showPosition(position) {
				 
				  
				  var lattitude = position.coords.latitude;
					var longitude = position.coords.longitude;
				}

				function myFunction(){
					document.getElementById("demo").innerHTML = "https://www.google.com/maps/dir/?api=1&origin="position:longitude","position:latitude"&destination=<php echo $longitude;?>,<?php echo $lattitude; ?>";
				}

				
	</script>
</body>
</html>