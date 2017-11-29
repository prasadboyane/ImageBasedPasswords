<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.LoggedIn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>-->
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
    <script>
        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }
    </script>
 <script language="Javascript" type="text/javascript">

        function onlyAlphabets(e, t) {
            try {
                if (window.event) {
                    var charCode = window.event.keyCode;
                }
                else if (e) {
                    var charCode = e.which;
                }
                else { return true; }
                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
                    return true;
                else
                    return false;
            }
            catch (err) {
                alert(err.Description);
            }
        }

    </script>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
     <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap-responsive.css">
    <link rel="stylesheet" type="text/css" href="css/treeview.css">
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/component.css">
    <link rel="stylesheet" href="css/font-awesome-ie7.css">
    <link rel="stylesheet" href="css/custom-styles.css">
    <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap-responsive.css">
    <link rel="stylesheet" href="css/custom-styles.css">
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/component.css">
    <link rel="stylesheet" href="css/font-awesome-ie7.css">
    
    <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body>
    <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
    <!-- Site header starts here -->
    <div class="container b-radius-top">
        <div class="top-bar b-radius">
            <div class="top-content">
                <ul> </ul>
            </div>
        </div><!-- main content starts here -->
        <!-- Site Name starts here -->
        <div class="site-name">
            <h1>Neuro Bank</h1>
            <h5>Value Your Money</h5> </div>
                    <%   
                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getlogedin()) {
                    %>
            <nav class="navbar navbar-default bg-blue">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                         <li class="dropdown" style="color:#FFF"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account  <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                        <li><a href="applicant_detail.html">Saving</a></li>
                                        <li><a href="current-acc.html">Current</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown" style="color:#FFF"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Deposits<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                        <li><a href="fixed.jsp">Fixed Deposits</a></li>
                                        <li><a href="fixed.jsp"><li>Rolling Deposits</a></li>
                                    </ul>
                                </li>
                                 <li class="dropdown" style="color:#FFF"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Transasctions<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                        <li><a href="#">Deposit</a></li>
                                        <li><a href="#">Withdraw</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown" style="color:#FFF"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Loans<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                        <li><a href="#">Education Loan</a></li>
                                        <li><a href="#">Property Load</a></li>
                                        <li><a href="#">Car Loan</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown" style="color:#FFF"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Requests<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                   
                                        <li><a href="#">Create</a></li>
                                        <li><a href="#">Track</a></li>
                                        <li><a href="Approve1.jsp">Approve Account</a></li>
                                       <li><a href="#"> Delete</a></li>
                                    </ul>
                                </li>
                                 <li class="dropdown" style="color:#FFF"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Transaction Reports<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                
                                        <li><a href="#">Passbook</a></li>
                                        <li><a href="#">Statements</a></li>
                                    </ul>
                                </li>
                                <li><a href="logout2.jsp">Logout</a></li>
                            </ul>
                            
                           <p style="color:#FFF; margin:10px 20px 0px 0px;"><h5 style="color:#FFF;"> <%=lg.getUsername()%></h5></p>
                            <ul class="nav navbar-nav navbar-right">
                            
                        </ul>
                        
                        </div>
                    </div>
                    </nav> 
                </div>
                
                
                <div class="container reg-form">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-4 well well-sm col-md-offset-4">
            <legend><a href="http://www.jquery2dotnet.com"><i class="fa fa-star"></i></a> New Account </legend>
            <form action="Savings" method="post" class="form" role="form">
            <div class="row">
                <div class="col-xs-6 col-md-6">
                    
                 <label for="" style="margin-left:20px;">First Name *</label><input class="form-control" style="margin-bottom:10px; margin-left:15px;" value=${fname} name="firstname" placeholder="First Name" type="text"
                        onkeypress="return onlyAlphabets(event,this);" data-validation-required-message="Please enter your name." />
                </div>
                <div class="col-xs-6 col-md-6"><label>Last Name *</label>
                    <input class="form-control" style="margin-bottom:10px;" value=${lname} name="lastname" placeholder="Last Name" type="text" onkeypress="return onlyAlphabets(event,this);" data-validation-required-message="Please enter your name." />
                </div>
            </div>
               
                
                
               <div class="form-group">
                                <label for="DOB"><span class="req">* </span> Date Of Birth </label>
                                <input class="form-control" type="date" name="DOB" id="txt" onkeyup="Validate(this)" placeholder="" required />
                                <div id="errLast"></div>
                            </div>
               
                <label>Address *</label>
                 <input class="form-control" style="margin-bottom:10px;" name="address" placeholder="Address" type="text" required/>
                <label>Email *</label>
                <input class="form-control" style="margin-bottom:10px;" value=${email} name="email" placeholder="Email" type="text" required />
                <label>Mobile No *</label>
                <input class="form-control" style="margin-bottom:10px;"maxlength="10" pattern="[7-9]{1}[0-9]{9}" name="phone" placeholder="Phone No." type="text" required />
     <label>Pan No *</label>
            <input class="form-control" style="margin-bottom:10px;" value=${pan} name="pan" placeholder="PAN No." type="text"  required/>
                <label>Aadhar No *</label>
                <input class="form-control" style="margin-bottom:10px;" value=${adhar} maxlength="12"  name="aadhar" placeholder="Adhar No." type="text" required />
                
                <div class="form-group">
                                <label for="occupation"><span class="req"></span> Ocupation </label>
                                <select class="selectpicker" name="Occ">
                                    <option>Student</option>
                                    <option>Business</option>
                                    <option>Employee</option>
                                    <option>Retired</option>
                                </select>
                            </div>
                           
                            
                            <div class="form-group">
                                <label for="occupation"><span class="req"></span>Operation </label>
                                <select class="selectpicker" name="TOA">
                                    <option>Self</option>
                                    <option>Joint</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="occupation"><span class="req"></span>Joint Operations </label>
                                <select class="selectpicker" name="JOI">
                                    <option>EOS</option>
                                    <option>BOTH</option>
                                </select>
                            </div>
                <label>Account No *</label>
            <input class="form-control" style="margin-bottom:10px;" name="Accno" placeholder="Account No." type="text"  required/>
               
                <label for="Accno"><span class="req">Balance</span></label>
                                <input class="form-control" type="text" name="Bal" id="txt" onkeyup="Validate(this)" placeholder="Balance" required />
                                <div id="errLast"></div>
                            
                            <div class="form-group">
                                <label for="username"><span class="req">Rate of Intrest</span></label>
                                <input class="form-control" type="text" name="ROI" id="txt" onkeyup="Validate(this)" placeholder="Rate of Interest" required />
                                <div id="errLast"></div>
                            </div>
                             <label for="DOA"><span class="req">* </span> Date Of Account Opening </label>
                                <input class="form-control" type="date" name="DOAO" id="txt" onkeyup="Validate(this)" placeholder="" required />
							<div class="form-group">
                                <label for="username"><span class="req">Username For Customer </span></label>
                                <input class="form-control" type="text" value=${fname} name="username" id="txt" onkeyup="Validate(this)" placeholder="User Name" required />
                                <div id="errLast"></div>
                            </div>
							<div class="form-group">
                                <label for="username"><span class="req">Password For Customer </span></label>
                                <input class="form-control" type="password" name="password" id="txt" onkeyup="Validate(this)" placeholder="Password" required />
                                <div id="errLast"></div>
                            </div>
                            
                            

            <div class="form-group">
                                
                                    <input type="hidden" value="" name="dateregistered">
                                    <input type="hidden" value="0" name="activate" />
                                    <hr>
                                    <input type="checkbox" required name="terms" onchange="this.setCustomValidity(validity.valueMissing ? 'Please indicate that you accept the Terms and Conditions' : '');" id="field_terms">
                                    <label for="terms">I agree with the <a href="#" title="You may read our terms and conditions by clicking on this link">terms and conditions</a> for Registration.</label><span class="req">* </span> </div>
                            
                            
         	  <script>
         
            function getConfirmation(){
               var retVal = confirm("Do you want to continue?");
               if( retVal == true ){
                  document.write ("Acc no:"+Acc);
                  document.write("Transaction ID:"+transid)
                  return true;
               }
               else{
                  document.write ("User does not want to continue!");
                  return false;
               }
            }
         
      </script>
            <button type="submit" onclick="getConfirmation();" class="btn btn-success btn-lg btn-round-lg" style="border-radius: 22.5px; width:100%;">Upload Document</button>
            </form>
        </div>
    </div>
</div>
            
    <%}
                            
                            }else{
                                %>
    <div class="site-header">
        <!-- Site Name starts here -->
    
        <nav class="navbar navbar-default bg-blue">
                    <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="Index2.jsp">Home <span class="sr-only">(current)</span></a></li>
                                <li class="dropdown" style="color:#FFF"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="corp_login.jsp">Corporate Login</a></li>
                                        <li><a href="custm.jsp">Customer Login</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Schemes</a></li>
                                <li><a href="#">Loans</a></li>
                                <li><a href="#">Help</a></li>
                                
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <form class="navbar-form navbar-left">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Search"> </div>
                                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                                </form>
                            </ul>
                        </div>
                        <!-- /.navbar-collapse -->
                    </div>
                    <!-- /.container-fluid -->
                </nav>
    </div>
              
                         <!--End of Navigation Bar -->
                         <!-- Banner starts here -->
            <div class="banner">
                <div class="carousel slide" id="myCarousel">
                    <!-- Carousel items -->
                    <div class="carousel-inner">
                        <div class="item active"> <img src="img/int.jpg" alt="">
                            <div class="carousel-caption"> </div>
                        </div>
                        <div class="item"> <img src="img/2.jpg" alt="">
                            <div class="carousel-caption"> </div>
                        </div>
                        <div class="item"> <img src="img/3.jpg" alt="">
                            <div class="carousel-caption"> </div>
                        </div>
                    </div> <a data-slide="prev" href="#myCarousel" class="carousel-control left"><i class="fa fa-chevron-left"></i></a> <a data-slide="next" href="#myCarousel" class="carousel-control right"><i class="fa fa-chevron-right"></i></a> </div>
            </div>
            <!-- Banner ends here -->
   
    
               <%            
                    }
                %>
                    
                </div>
                <div class="hiding">
                    <h1>G.S Moze College </h1>
                    <h5>Balewadi, Pune</h5>
                    <div class="carousel slide" id="myCarousel2">
                                    <!-- Carousel items -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="img/img1.jpg" alt="">
                            </div>
                            <div class="item">
                                <img src="img/img2.jpg" alt="">
                            </div>
                            <div class="item">
                                <img src="img/img3.jpg" alt="">
                            </div>
                        </div>
                        <a class="carousel-control left" href="#myCarousel2" data-slide="prev"><i class="fw-icon-chevron-left"></i></a>
                        <a class="carousel-control right" href="#myCarousel2" data-slide="next"><i class="fw-icon-chevron-right"></i></a>
                    </div>

                </div>
                   <!-- Featured slider ends here -->    

                <!-- Main content ends here -->

            </div>
        
                <div class="copy-rights">
                    Copyright (c)All rights reserved.  G.S Moze college of Engineering Balewadi, Pune - 45
                </div>

            
                
       <script src="js/jquery-1.9.1.js"></script> 
<script src="js/bootstrap.js"></script>
<script src="js/masonry.pkgd.min.js"></script>
    <script src="js/imagesloaded.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/AnimOnScroll.js"></script>
    
    <script>
      new AnimOnScroll( document.getElementById( 'grid' ), {
        minDuration : 0.4,
        maxDuration : 0.7,
        viewportFactor : 0.2
      } );
    </script>
<script>
$('#myCarousel').carousel({
    interval: 1800
});
</script>
        



   </body>
</html>
