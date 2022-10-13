<?php
    require 'connection.php';
    session_start();
    $username=mysqli_real_escape_string($con,$_POST['usernme']);
    $password=mysqli_real_escape_string($con,$_POST['password']);
    $user_authentication_query="select username from admin where username='$username' and password='$password'";
    $user_authentication_result=mysqli_query($con,$user_authentication_query) or die(mysqli_error($con));
        header('location: admin.php');
 ?>