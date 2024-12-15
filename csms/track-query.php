<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>
<!DOCTYPE html>
<html lang="zxx">
  <head>
     
      <title>Car Showrooms Management System / Track Enquiry</title>
      
      <link rel="stylesheet" href="assets/css/master.css">
     
  </head>
  <body class="page">
               
    <!-- Loader-->
      <div id="page-preloader"><span class="spinner border-t_second_b border-t_prim_a"></span></div>
    <!-- Loader end-->

      
        <?php include_once('includes/header.php');?>
            <!-- end .header-->
        <div class="section-title-page area-bg area-bg_dark area-bg_op_60">
          <div class="area-bg__inner">
            <div class="container">
              <div class="row">
                <div class="col offset-lg-3">
                  <div class="b-title-page__wrap">
                    <h1 class="b-title-page">Track Enquiry</h1>
                    <nav aria-label="breadcrumb">
                      <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Track Enquiry</li>
                      </ol>
                      <!-- end breadcrumb-->
                    </nav>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- end .b-title-page-->
        <main class="l-main-content">
          <div class="container">
            <div class="section-area">

              <div class="row">
                <div class="col-md-6 col-lg-8">
                  <div class="b-contacts"><i class="ic icon-direction"></i>
                    <p style="font-size:18px;">Track your Enquiry</p>
                    <form method="post">
                 <div class="form-group">
                            <input class="form-control" type="text" name="eno" required="true" placeholder="Eqnuiry Number"/>
                          </div>
                        <div class="form-group">
                            <input class="form-control" type="text" name="mobemail" required="true" placeholder="mobile no or EMail Id"/>
                          </div>
                              <div class="form-group">
                                <input type="submit" name="submit" value="search" class="btn btn-primary">
                              </div>
                    </form>
                  </div>
                </div>
      <?php
      if(isset($_POST['submit'])) {
$eno=$_POST['eno'];
$udata=$_POST['mobemail'];
$ret=mysqli_query($con,"select * from tblenquiry join tblcars on tblcars.ID=tblenquiry.CardId where 
  tblenquiry.EnquiryNumber='$eno' and (tblenquiry.Email='$udata' || tblenquiry.MobileNumber='$udata')");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
               <table border="1" class="table table-bordered mg-b-0" style="margin-top:4%;">
   <tr>
     <th>Enquiry No</th>
     <th><?php  echo $row['EnquiryNumber'];?></th>
   </tr>
   <tr>
                                <th>Full Name</th>
                                   <td><?php  echo $row['FullName'];?></td>
                                   </tr>  
                                   <tr>
                                <th>Car Name</th>
                                   <td><?php  echo $row['CarName'];?></td>
                                   </tr>                           
<tr>
                                <th>Email</th>
                                   <td><?php  echo $row['Email'];?></td>
                                   </tr>
                                 
                                <tr>
                                <th>MobileNumber</th>
                                   <td><?php  echo $row['MobileNumber'];?></td>
                                   </tr>
                                   <tr>
                                    <th>Message</th>
                                      <td><?php  echo $row['Message'];?></td>
                                  </tr>
                                      <tr>  
                                       <th>Enquiry Date</th>
                                        <td><?php  echo $row['EnquiryDate'];?></td>
                                    </tr>


<tr>
    <tr>
    <th>Status</th>
    <td> <?php  
if($row['Status']=="")
{
  echo "Unanswer Enquiry";
}
if($row['Status']=="Answer")
{
  echo "Answer Enquiry";
}

     ;?></td>
  </tr>
</table>

<table class="table mb-0">

<?php if($row['Status']!=""){?>
    <table border="1" class="table table-bordered mg-b-0">
  <tr>
    <th>Remark</th>
    <td><?php echo $row['AdminRemark']; ?></td>
  </tr>


<tr>
<th>Remark date</th>
<td><?php echo $row['AdminRemarkdate']; ?>  </td></tr>
<?php } ?>
</table>


  

  

<?php }      } ?>
   
   
          
          
              <!-- end .b-contacts-->
            </div>
            
          </div>
        </main>
         <?php include_once('includes/footer.php');?>
          <!-- .footer-->
      </div>
    </div>
    <!-- end layout-theme-->
    
    
    <!-- ++++++++++++-->
    <!-- MAIN SCRIPTS-->
    <!-- ++++++++++++-->
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-migrate-1.4.1.min.js"></script>
    <!-- Bootstrap-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <!-- Select customization & Color scheme-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.5/js/bootstrap-select.min.js"></script>
  
    <!-- Pop-up window-->
    <script src="assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Headers scripts-->
    <script src="assets/plugins/headers/slidebar.js"></script>
    <script src="assets/plugins/headers/header.js"></script>
    <!-- Mail scripts-->
    <script src="assets/plugins/jqBootstrapValidation.js"></script>

    <!-- Video player-->
    <script src="assets/plugins/flowplayer/flowplayer.min.js"></script>
    <!-- Filter and sorting images-->
    <script src="assets/plugins/isotope/isotope.pkgd.min.js"></script>
    <script src="assets/plugins/isotope/imagesLoaded.js"></script>
    <!-- Progress numbers-->
    <script src="assets/plugins/rendro-easy-pie-chart/jquery.easypiechart.min.js"></script>
    <script src="assets/plugins/rendro-easy-pie-chart/jquery.waypoints.min.js"></script>
    <!-- Animations-->
    <script src="assets/plugins/scrollreveal/scrollreveal.min.js"></script>
    <!-- Scale images-->
    <script src="assets/plugins/ofi.min.js"></script>
    <!-- Video player-->
    <script src="assets/plugins/flowplayer/flowplayer.min.js"></script>
    <!--Sliders-->
    <script src="assets/plugins/slick/slick.js"></script>
    <!-- User customization-->
    <script src="assets/js/custom.js"></script>
  </body>
</html>