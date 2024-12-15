 <?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>
 <footer class="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="text-center">
                                <div class="footer-logo">
                                    <p style="font-size:20px;color:red">Car Showroom Management System</p>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-sm-5">
                            <div class="footer-section footer-section_info">
                                <?php

                    
$ret=mysqli_query($con,"select * from tblpages where PageType='contactus'");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
                                <div class="footer-info" style="color: white"><?php echo $row['PageTitle'];?></div>
                                <div class="footer-contacts">
                                   
                                    <div class="footer-contacts__item"><i class="ic icon-location-pin"></i><?php  echo $row['HeadOffice'];?></div>
                                    <div class="footer-contacts__item"><i class="ic icon-envelope"></i><a href="mailto:support@domain.com"><?php  echo $row['Email'];?></a></div>
                                    <div class="footer-contacts__item"><i class="ic icon-earphones-alt"></i>Phone:

                                        <a href="tel:+17553028549"><?php  echo $row['PhoneNumber'];?></a>
                                    </div>
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-3">
                            <div class="row">
                                <div class="col-lg-6">
                                    <section class="footer-section footer-section_link">
                                        <h3 class="footer-section__title">About CSMS</h3>
                                        <ul class="footer-list list-unstyled">
                                            <li><a href="index.php">Home</a></li>
                                            <li><a href="companies-car.php">Car Companies</a></li>
                                            <li><a href="about.php">About us</a></li>
                                            <li><a href="car-list.php">Car List</a></li>
                                            <li><a href="contacts.php">Contact</a></li>
                                        </ul>
                                    </section>
                                </div>
                                <div class="col-lg-6">
                                    
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <section class="footer-section footer-section_subscribe">
                                <h3 class="footer-section__title" style="color: red">Some Listed Companies</h3>
                                <form class="footer-form">
 <?php 
 $query=mysqli_query($con,"select CompanyName,CompanyImage from tblcompany limit 4");
 while ($row=mysqli_fetch_array($query)) {


 ?> 

                                    <div class="footer-form__info"><ul class="footer-list list-unstyled">
                                            <li> <a href="companywise-cars.php?crname=<?php echo $row['CompanyName'];?>">                     
<img class="b-goods-f__img img-scale" src="admin/images/<?php echo $row['CompanyImage'];?>" alt="<?php echo $row['CompanyName'];?>" style="border:solid #000 1px" width="60" height="50" /></a></li>
                                    <?php } ?>
                                            
                                        </ul></div>
                                    
                                   
                                </form>
                            </section>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="footer-copyright">
                  Car Showroom Management System. All rights reserved.
                                
                            </div>
                        </div>
                    </div><span class="footer__btn-up js-scroll-top"><i class="ic fas fa-angle-up"></i><img src="assets/media/general/go_top.png" alt="go top"></span>
                </div>
            </footer>