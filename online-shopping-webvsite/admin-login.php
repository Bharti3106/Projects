<?php
    require 'connection.php';
    session_start();
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
        .row
                {
                    background:url(img/login.jpg);
                    padding-top:0;

                }
                </style>
            
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
                            <div class="panel-heading">
                                <h3>LOGIN</h3>
                            </div>
                            <div class="panel-body">
                                <p>Login to make a purchase.</p>
                                <form method="post" action="admin_submit.php">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="usernme" placeholder="Admin Name" >
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" name="password" placeholder="Password" pattern=".{6,}">
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="Login" class="btn btn-primary">
                                    </div>
                                </form>
                            </div>
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
