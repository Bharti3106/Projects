<?php
	session_start();
    require 'connection.php';
    $id = $_GET['rid'];
    $user_authentication_query="delete from reviews where rid='$id'";
    $user_authentication_result=mysqli_query($con,$user_authentication_query) or die(mysqli_error($con));
    ?>
    <script>
        window.alert("Review Deleted Sucessfully !!");
        window.location.href='admin-review.php'

    </script>

