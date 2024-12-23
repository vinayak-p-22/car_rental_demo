<?php
session_start();
include("connect.php");
if($_SERVER["REQUEST_METHOD"]=="POST")
{
	$a=$_POST['mob'];
	$b=$_POST['pass'];
}
$query=mysqli_query($conn,"SELECT * FROM customer_tb WHERE mob='$a'and pass='$b'");
if(mysqli_num_rows($query)<1)
{
	$_SESSION['msg']="Login Faild,User Not Found";
	header('location:index.php');
}
else
{
	$row=mysqli_fetch_array($query);
	$_SESSION['id']=$row['id'];
	$_SESSION['mob']=$row['mob'];
	header("location:home.php");
}
?>