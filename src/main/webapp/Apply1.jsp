<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
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
    <link rel="stylesheet" href="css/custom-styles.css">
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/component.css">
    <link rel="stylesheet" href="css/font-awesome-ie7.css">
   
    <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>
<body style="padding-top:30px">
    
    <!-- main content starts here -->
    <div class="container b-radius-top">
        <div class="top-bar b-radius">
            <div class="top-content">
                <ul> </ul>
            </div>
        </div>
        <div class="site-header">
            <!-- Site Name starts here -->
            <div class="site-name">
                <h1>Neuro Bank</h1>
                <h5>Online Banking System</h5> 
            </div>
            
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
                           
                            <li><a href="#">Schemes</a></li>
                            <li><a href="#">Loans</a></li>
                             <li><a href="Apply1.jsp">Apply Online</a></li>
                             <li><a href="#">About</a></li>
                            <li><a href="#">Help</a></li>
                           
                        </ul>
                        
                    </div>
                    
                      <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
            </nav>
           
            
<!--================REGISTRATION FORM================-->
            <div class="container reg-form">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-4 well well-sm col-md-offset-4">
            <legend><a href="Index2.jsp"><i class="fa fa-globe"></i></a> Apply Online For New Account!</legend>
            <form action="Apply1" method="POST" class="form" role="form">
            <div class="row">
                <div class="col-xs-6 col-md-6">
                    
                 <label for="" style="margin-left:20px;">First Name *</label><input class="form-control" style="margin-bottom:10px; margin-left:15px;" name="fname" placeholder="First Name" type="text"
                        onkeypress="return onlyAlphabets(event,this);" data-validation-required-message="Please enter your name." />
                </div>
                <div class="col-xs-6 col-md-6">
                    <label for="">
                Middle Name</label><input class="form-control" style="margin-bottom:10px;" name="mname" placeholder="Middle Name" type="text" onkeypress="return onlyAlphabets(event,this);" data-validation-required-message="Please enter your name."  />
                </div>
            </div>
            <label>Last Name *</label><input class="form-control" style="margin-bottom:10px;" onkeypress="return onlyAlphabets(event,this);" name="lname" placeholder="Lastname" type="text" required />
             <label>Gender</label><br>
             <label class="radio-inline">
                <input type="radio" name="gender" id="inlineCheckbox1" value="male" required />
                Male
            </label>
            <label class="radio-inline">
                <input type="radio" name="gender" id="inlineCheckbox2" value="female" required />
                Female
            </label><br>
            <br>
           <label>Date of Birth</label> <input class="form-control" style="margin-bottom:15px;" type="date" id="dob" name="dob" required placeholder="YYYY-MM-DD" ></input></td>
           <label for="">Email *</label> <input class="form-control" style="margin-bottom:10px;" name="email" placeholder="Enter Email" type="email"  required/>
          <label for="">Aadhar No *</label>  <input class="form-control" style="margin-bottom:10px;" maxlength="12"  name="adhar" placeholder="Enter Aadhar No" type="text"  />
            <label for="">Pan No *</label><input class="form-control" style="margin-bottom:10px;" name="pan" placeholder="Enter Pancard" type="text" required />
           <label for="">Mobile No *</label> <input class="form-control" style="margin-bottom:10px;" maxlength="10" pattern="[7-9]{1}[0-9]{9}" name="mob" placeholder="Mobile No" type="text"  required/>
           <label for="">City *</label> <input class="form-control" style="margin-bottom:10px;" name="city" placeholder="City" type="text" required />
		   <label for="">State</label> <input class="form-control" style="margin-bottom:10px;" name="state" placeholder="State" type="text"  required/>
		    <label for="">Address</label> <input class="form-control" style="margin-bottom:10px;" name="addr" placeholder="Address" type="text" required />
		   <label for="">Pin</label> <input class="form-control" style="margin-bottom:10px;" onkeypress="return isNumber(event)" name="pin" placeholder="Pincode" type="text" />
		<!--   <label for="">Passport Photo</label> <input class="" style="margin-bottom:10px;" name="passport" placeholder="Passort Photo" type="file" />
		  <label for="">Signature</label> <input class="" style="margin-bottom:10px;" name="sign" placeholder="Upload Sign" type="file" /> 
		    -->
            <br />
            <br />
            <button type="submit" value="REGISTER" class="btn btn-info btn-lg btn-round-lg" style="border-radius: 22.5px; width:100%;">Apply</button>
            
            </form>
        </div>
    </div>
</div>
<!--========================REGISTRATION FORM END=================-->
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
