<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
    font-family: "Lato", sans-serif;
}

.sidenav{
    height: relative;
    width: 500px;
    position: relative;
    z-index: 1;
    overflow-x: hidden;
    padding-top: 2px;
    margin-top: 100px;
    background-color: #C0C0C0	;
    margin-left:400px;
    vertical-align: center;
}

.sidenav a {
    padding: 10px 5px 10px 16px;
    text-decoration: none;
    font-size: 25px;
    display: block;
}

.main {
    margin-left: 300px; /* Same as the width of the sidenav */
    font-size: 28px; /* Increased text to enable scrolling */
    padding: 0px 10px;
    text-align: center;
}

.sidenav h3 {
    font-weight: bold;
    font-family: "Lato", sans-serif;
    margin-left: 16px;
    width:200px;
    margin-bottom: 5px; 
}
@media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
    .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>

<div class="sidenav">
  <h3><u>ACTIONS</u></h3>
  <a href="admin-review.php">All Reviews</a>
  <a href="15-less-review.php">Fake Reviews( Less than 15 words)</a>
  <a href="common-reviews.php">Common Reviews</a>
 

</div>
</body>
</html> 
