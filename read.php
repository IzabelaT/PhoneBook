<?php
session_start();
?>
<html lang="en">
<head>
<title>Phone Book</title>
<link rel="stylesheet" href="css/style.css">
<script>
   function ConfirmDelete() {
  return confirm("Are you sure, that do you want to delete?");
}
</script>
</head>
<body>
<div id = "main">
  <h1> Phone Book</h1>
  
  <?php  include_once 'menu.php';?><br><br>
  
   <table class=" viewtabl" >
  <th>
  <tr>
  <td> <strong>S.No</strong></td>
  <td><strong>Name</strong></td>
  <td><strong>Designation</strong></td>
  <td><strong>Phone</strong></td>
  <td><strong>Address</strong></td>
  <td><strong>Action</strong></td>
  </tr>
  </th>
  <?php
   require_once 'include/db.php';
   $count= 1;
   $query = "SELECT * FROM contactdetails ORDER BY contact_name";
    $result = mysqli_query($dbcon,$query);
	 while($row = @mysqli_fetch_assoc($result)){?>
  
  
  <tr>
  <td id="od"> <?php echo $count;?></td>
  <td class="ev"> <?php echo $row["contact_name"];?></td>
  <td class="od"><?php echo $row["designation"];?></td>
  <td class="ev"><?php echo $row["phone"];?></td>
  <td class="od"><?php echo $row["address"];?></td>
  <td class="ev">
      <a href="create.php?createid=<?php echo $row["contact_id"]; ?>"id="crt" >Create</a>
  <a href="delete.php?deleteid=<?php echo $row["contact_id"]; ?> "id="del" Onclick="return ConfirmDelete()">Delete</a>
 <a href="update.php?updateid=<?php echo $row["contact_id"]; ?>"id="upd" >Update</a>
  </td>
  </tr>
 <?php $count++;}?>
	 </table>
	   
</div>
</body>

</html>

