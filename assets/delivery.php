<?php

session_start();
include('connection.php');

$name = $_SESSION['name'];
$mobile = $_SESSION['mobile'];
$dob = $_SESSION['dob'];
$gender = $_SESSION['gender'];
$password = $_SESSION['password'];
$adhar_number = $_POST['adhar_number'];
$_SESSION['aadhar'] = $adhar_number;
$query = "select * from delivery where mobile = $mobile";
if(mysqli_num_rows(mysqli_query($conn,$query))>0){
	echo"mobile number alredy registered";
}
else{
	
	$target_dir = "images/delivery/";
	
    $file = $_FILES['adhar_image']['name'];
    $path = pathinfo($file);
    $filename = $path['filename'];
    $ext = $path['extension'];
    $temp_name = $_FILES['adhar_image']['tmp_name'];
    $path_filename_ext = $target_dir.$adhar_number.".".$ext;

    // Check if file already exists
    if (file_exists($path_filename_ext)) {
        echo "Sorry, file already exists.";
    }else{
       if(move_uploaded_file($temp_name,$path_filename_ext)){
       echo "Congratulations! File Uploaded Successfully.";}
       else{
       	echo $temp_name.$path_filename_ext;
       }
   }
   $qry = "insert into delivery(`dname`,`mobile`,`gender`,`password`,`dob`,`aadhar`,`aadhar_img`) values('$name',$mobile,'$gender','$password','$dob',$adhar_number,'$path_filename_ext')";
   
   //echo $qry ;
	$result = mysqli_query($conn,$qry);
	$last_id = mysqli_insert_id($conn);
   echo $last_id;
   $_SESSION['did'] = $last_id;
	if($result){
		echo "Waiting for admins approval";
		header("location:../modules/list_delivery.php");
	}
}
?>