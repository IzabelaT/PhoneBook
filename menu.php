<?php
require_once 'include/db.php';
$query = "SELECT contact_id FROM contactdetails ";
    $result = mysqli_query($dbcon,$query);
	$row = @mysqli_num_rows($result);
?>
<div class="menu">  
   <ul>
      <li><a href="read.php">Contacts</a><?php echo '<p class= "count">'.$row.'</p>';?>
       <li><a href="logout.php">Logout</a></li>
   </ul>
</div>  