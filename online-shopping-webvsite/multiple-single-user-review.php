<?php
    session_start();
    require 'connection.php';    
    $user_products_query="select * from reviews where count(user-id)>2";
    $user_products_result=mysqli_query($con,$user_products_query) or die(mysqli_error($con));
    $no_of_user_products= mysqli_num_rows($user_products_result);
?>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="img/lifestyleStore.png" />
        <title>Projectworlds Store</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- latest compiled and minified CSS -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
        <!-- jquery library -->
        <script type="text/javascript" src="bootstrap/js/jquery-3.2.1.min.js"></script>
        <!-- Latest compiled and minified javascript -->
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <!-- External CSS -->
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <div>
            <?php 
               require 'header.php';
            ?>
            <br>s
            <div class="container">
                <table class="table table-bordered table-striped">
                    <tbody>
                        <tr>
                            <th>Sr No.</th><th>Review</th><th>User Id</th><th>Product Name</th><th>Price</th>
                        </tr>
                        <?php 
                        $user_products_result=mysqli_query($con,$user_products_query) or die(mysqli_error($con));
                        $no_of_user_products= mysqli_num_rows($user_products_result);
                        $counter=1;
                       while($row=mysqli_fetch_array($user_products_result)){
                           
                         ?>
                        <tr>
                            <th><?php echo $counter ?></th>
                            <th><?php echo $row['review_text']?></th>
                            <th><?php echo $row['user_id']?></th>
                            <th><?php echo $row['Item_name']?></th>
                            <th><?php echo $row['price']?></th>

                            <th><a href='ADD_reviews.php?id=<?php echo $row['id'] ?>'>Delete</a></th>


                        </tr>
                       <?php $counter=$counter+1;}?>
                       
                       
                    </tbody>
                </table>
            </div>
            <br><br><br><br><br><br><br><br><br><br>
            <footer class="footer">
               <div class="container">
                <center>
                <p>Copyright &copy Shopping Store. All Rights Reserved.</p>
                   <p>This website is developed by Shashi Verma & Bharti</p>
                              </center>
               </div>
           </footer>
        </div>
    </body>
</html>
