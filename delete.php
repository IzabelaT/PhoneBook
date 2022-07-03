<?php
require 'include/db.php';
$getid = $_GET['deleteid'];
$query = "DELETE FROM contactdetails WHERE contact_id = '$getid'";

$query_run = mysqli_query($dbcon,$query);
if($query_run){
	header('Location:read.php');
}else{
	echo 'Error while deleting user record';
}