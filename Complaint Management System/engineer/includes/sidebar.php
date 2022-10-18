<aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
                              <?php $query=mysqli_query($con,"select fullName,engineerImage from engineers where engineerEmail='".$_SESSION['login']."'");
 while($row=mysqli_fetch_array($query)) 
 {
 ?> 
                  <p class="centered"><a href="profile.php">
<?php $engineerphoto=$row['engineerImage'];
if($engineerphoto==""):
?>
<img src="engineerimages/noimage.png"  class="img-circle" width="70" height="70" >
<?php else:?>
  <img src="engineerimages/<?php echo htmlentities($userphoto);?>" class="img-circle" width="70" height="70">

<?php endif;?>
</a>
</p>
 
                  <h5 class="centered"><?php echo htmlentities($row['fullName']);?></h5>
                  <?php } ?>
                    
                  <li class="mt">
                      <a href="dashboard.php">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
                  

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>Account Setting</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="profile.php">Profile</a></li>
                          <li><a  href="change-password.php">Change Password</a></li>
                        
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-dashboard"></i>
                          <span>View Complaint Details</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="notprocess-complaint.php">Not yet Process</a></li>
                          <li><a  href="inprocess-complaint.php">In process </a></li>
                          <li><a  href="closed-complaint.php">Closed </a></li>
                      </ul>
                  </li>

                      
                  </li>
                 
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>