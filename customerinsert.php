<?php
include("connect.php");
$a=mysqli_real_escape_string($conn,$_REQUEST['name']);
$b=mysqli_real_escape_string($conn,$_REQUEST['place']);
$c=mysqli_real_escape_string($conn,$_REQUEST['mob']);
$d=mysqli_real_escape_string($conn,$_REQUEST['dob']);
$d1=mysqli_real_escape_string($conn,$_REQUEST['lnumber']);
$e=mysqli_real_escape_string($conn,$_REQUEST['pass']);
$sql="INSERT INTO customer_tb(name,place,mob,dob,lnumber,pass)VALUE('$a','$b','$c','$d','$d1','$e')";
if (mysqli_query($conn,$sql))

{
	?>
	<script type="text/javascript">
	alert('sumbitted successfully!');
    window.location.href="index.php";
    </script>
    <?php
}
?>