<?php
include("connect.php");
$a=mysqli_real_escape_string($conn,$_REQUEST['cname']);
$b=mysqli_real_escape_string($conn,$_REQUEST['cmodel']);
$c=mysqli_real_escape_string($conn,$_REQUEST['cnumber']);
$d=mysqli_real_escape_string($conn,$_REQUEST['price']);
$e=mysqli_real_escape_string($conn,$_REQUEST['cuname']);
$f=mysqli_real_escape_string($conn,$_REQUEST['mob']);
$g=mysqli_real_escape_string($conn,$_REQUEST['lnumber']);
$h=mysqli_real_escape_string($conn,$_REQUEST['fdate']);
$i=mysqli_real_escape_string($conn,$_REQUEST['tdate']);
$j=mysqli_real_escape_string($conn,$_REQUEST['address']);
$sql="INSERT INTO book_tb(cname,cmodel,cnumber,price,cuname,mob,lnumber,fdate,tdate,address)VALUE('$a','$b','$c','$d','$e','$f','$g','$h','$i','$j')";
if (mysqli_query($conn,$sql))

{
	?>
	<script type="text/javascript">
	alert('sumbitted successfully!');
    window.location.href="home.php";
    </script>
    <?php
}
?>