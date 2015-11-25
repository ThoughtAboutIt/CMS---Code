<?php
session_start();
include_once 'dbconnect.php';

if(!isset($_SESSION['user']))
{
	header("Location: index.php");
}
$res=mysqli_query($conn,"SELECT username FROM users WHERE user_id=".$_SESSION['user']);
while($row = mysqli_fetch_array($res))
{
    $_SESSION['username'] = $row['username'];
}
$resu=mysqli_query($conn,"SELECT admin FROM users WHERE user_id=".$_SESSION['user']);
while($row = mysqli_fetch_array($resu))
{
    $_SESSION['admin'] = $row['admin'];
}
?>
 