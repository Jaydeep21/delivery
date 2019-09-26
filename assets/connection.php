<?php

$conn = mysqli_connect("localhost", "root", "jaydeep", "cookkar");
if(!$conn){
    echo "Connection error".die(mysqli_connection_error());
}

?>