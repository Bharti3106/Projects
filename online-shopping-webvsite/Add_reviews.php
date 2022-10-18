<?php
    require 'connection.php';
    session_start();
    require 'connection.php';
    if(!isset($_SESSION['email'])){
        header('location: login.php');
    }
    $USER_ITEMS=$_SESSION['id'];
    $item_id =$_GET['id'];
    $user_products_query="select it.id,it.name,it.price from users_items ut inner join items it on it.id=ut.item_id where ut.user_id='$USER_ITEMS' and ut.item_id ='$item_id'";
    $user_products_result=mysqli_query($con,$user_products_query) or die(mysqli_error($con));
    $no_of_user_products= mysqli_num_rows($user_products_result);

?>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="img/lifestyleStore.png" />
        <title>Shopping Store</title>
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
       <style>
        .style
        {
         text-align  : center;
         font-weight : bold;
        }
        </style>
        <script>
        function myfunction()
        {
        alert("Your reveiw is Added");
        }
            </script>
        
    </head>
    <body>
        <div>
            <?php
                require 'header.php';
            ?>
            <br>
           <div class="container">
                <div class="row">

                    <div class="col-xs-6 col-xs-offset-3"><br>

                        <div class="panel panel-primary">
                        
                        <?php 
                        $user_products_result=mysqli_query($con,$user_products_query) or die(mysqli_error($con));
                        $no_of_user_products= mysqli_num_rows($user_products_result);
                        while($row=mysqli_fetch_array($user_products_result))
                           { 
                            $NAME = $row['name'] ;  
                            $price = $row['price'];   
                           } 

                        ?>    
                         
                         <div class="panel-heading">
                                <h3>Add Review</h3>
                            </div>
                            <div class="style"><h3>Product Name - <?php echo $NAME ?></h3></div>
                         <div class="style"><h3>Price - <?php echo $price?></h3></div>

                            <div class="panel-body">
                                <form method="post">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="review" placeholder="text" >
                                    </div>
                                    <p> Note- Review should be greater than 15 words. Otherwise It will be counted as a fake review.So take care of this.<p>
                                    <div class="form-group">
                                        <input type="submit" value="Add" name ="SubmitButton" class="btn btn-primary" onclick ="myfunction()">
                                    </div>
                                    
                                </form>
                            </div>
                    </div>
                </div>
           </div>
          

           <br><br><br><br><br>
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
<?php
if(isset($_POST['SubmitButton']))
{
$review = $_POST['review'];
$add_to_reviews_query="INSERT into reviews(review_text,user_id,Item_id,Item_name,price) Values('$review','$USER_ITEMS','$item_id','$NAME','$price')";
$add_to_reviews_result =mysqli_query($con,$add_to_reviews_query) or die(mysqli_error($con));
header('location:review.php');
}
?>
