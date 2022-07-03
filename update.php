<?php
 ob_start();
  require_once 'include/db.php';
   if(isset($_POST['update1'])){
	    $getid = $_POST['contact_id'];
	   $fname = $_POST['fname'];
	   $designation = $_POST['designation'];
	   $phone = $_POST['phone'];
	   $address = $_POST['address'];
   $qu = ("UPDATE contactdetails SET contact_name='$fname', designation= '$designation',phone= '$phone',address='$address' 
   WHERE contact_id ='$getid'");
    $run_query =@mysqli_query($dbcon,$qu);
	if($run_query){
	header("Location:read.php");
  
   }else  {
	 echo '<p class="errorMsg">There was error while updating record</p>';  
   
	}
   }
   $getid = $_GET['updateid'];
   $query = "SELECT * FROM contactdetails WHERE contact_id ='$getid' ";
    $result = mysqli_query($dbcon,$query);
	 $drow = @mysqli_fetch_assoc($result);
?>
  <html lang="en">
<head>
<title>Phone Book</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

 <form class="addusrbox" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
  <h1> Update User</h1>
  <input type="hidden" name ="contact_id" value= "<?php echo isset($drow['contact_id']) ? $drow['contact_id'] : '';?>"><br>
 <label>Name</label> <input type="text" name ="fname" value= "<?php echo isset($drow['contact_name']) ? $drow['contact_name'] : '';?>"><br>
 <label>Designation</label> <input type="text" name ="designation" value="<?php echo isset($drow['designation']) ? $drow['designation'] : '';?>"><br>
 <label>Phone</label> <input type="text" name="phone" value="<?php echo isset($drow['phone']) ? $drow['phone'] : '';?>"><br>
	<label>Address</label> <input type="text" name="address" value="<?php echo isset($drow['address']) ? $drow['address'] : '';?>"><br>

     <input type="submit" value ="Update" name="update1">
     <p>Do you want to back in "Contacts" ? <a href="read.php" id="reg">Click here!</a>
  </form>
  </body>
  </html>
  