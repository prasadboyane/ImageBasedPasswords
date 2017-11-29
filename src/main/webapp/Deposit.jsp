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
    <script>
        function isChara(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode >= 97 && charCode <= 122) {
                return true;
            }
            return false;
        }
    </script>
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
                                        <li><a href="Savings1.jsp">Saving</a></li>
                                        <li><a href="Current1.jsp">Current</a></li>
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
                                        <li><a href="DepRet.jsp">Deposit</a></li>
                                        <li><a href="WithRet.jsp">Withdraw</a></li>
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
                                   
                                         <li><a href="CRequest1.jsp">Create</a></li>
                                        <li><a href="check_req1.jsp">Check</a></li>
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
            
            <!--================REGISTRATION FORM================-->
            <div class="container reg-form">
                <div class="row">




                    <div class="container reg-form">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-4 well well-sm col-md-offset-4">
                                <legend><a href="#"><i class="fa fa-star"></i></a>Deposit</legend>
                                <form action="Deposit" method="post" class="form" role="form">

                                    <lable style="margin-bottom:10px;">
                                        <h4>A/c No.</h4>
                                    </lable>
                                <input class="form-control" style="margin-bottom:10px;" name="Acc" value=${Accno} placeholder="Account Number" type="text" />
                                    <%
                               String Accno=(String) request.getAttribute("Accno");
                              

									%>

                                    <lable style="margin-bottom:10px;">
                                    <h4>Balance</h4>
                                </lable>
                                <input class="form-control" style="margin-bottom:10px;" onkeyup="minus();" id="Bal" name="Bal" value=${Bal} placeholder="Balance" type="text" />
                                    <lable style="margin-bottom:10px;">


                                        <h4>Date of Deposit</h4>
                                    </lable>
                                    <input class="form-control" style="margin-bottom:10px;" name="DOD" placeholder="Date of Withdrawal" type="text" />
                                    <lable style="margin-bottom:10px;">
                                        <h4>Particulars</h4>
                                    </lable>
                                    <input class="form-control" style="margin-bottom:10px;" name="Part" placeholder="Particulars" type="text" />
                                    <lable style="margin-bottom:10px;">
                                        <h4>Deposit Amount</h4>
                                    </lable>
                                    <input class="form-control" style="margin-bottom:10px;" id="Damt" onkeyup="sum();" name="Damt" placeholder="Withdrawal Amount" type="text" />

                                    <script>
                                        function sum() {

                                            var Bal = parseInt(document.getElementById("Bal").value);
                                            var Damt = parseInt(document.getElementById("Damt").value);
                                            var result = parseInt(Bal) + parseInt(Damt);
                                            if (!isNaN(result)) {
                                                document.getElementById("TotAmt").value = result;
                                            }

                                        }

                                    </script>
  <script type="text/javascript">
                            function TranId() {
                   document.forms[0].TranId.value=(Math.round(Math.random()*9999+1));
                              }
                                      onload=TranId
                             
                                      </script>
                           
                                 <lable style="margin-bottom:10px;">
                                    <h4>Total Balance</h4>
                                </lable>
                                <input class="form-control" style="margin-bottom:10px;" id="TotAmt" name="TotBal" placeholder="Total Balance" type="text" />
                                 
                                  <lable style="margin-bottom:10px;">
                                    <h4>Transaction ID</h4>
                                </lable>
                                 <input class="form-control"   style="margin-bottom:10px;"  name="TranId" placeholder="Transaction Id" type="text" />
                              
                               
                               <input type="submit" value="Deposit" style="margin-left:150px;">
                                                       </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
   
<%}
                            }else{
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
                            <li class="active"><a href="Index2.jsp">Home <span class="sr-only">(current)</span></a></li>
                             <li class="dropdown" style="color:#FFF"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="corp_login.jsp">Corporate Login</a></li>
                                    <li><a href="custm.jsp">Customer Login</a></li>
                                </ul>
                            </li>
                           
                            <li><a href="#">Schemes</a></li>
<li class="dropdown" style="color:#FFF"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Loans<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                        <li><a href="#">Education Loan</a></li>
                                        <li><a href="#">Property Load</a></li>
                                        <li><a href="#">Car Loan</a></li>
                                    </ul>
                                </li>                             <li><a href="Apply1.jsp">Apply Online</a></li>
                             <li><a href="#">About</a></li>
                            <li><a href="contact.jsp">Contact Us</a></li>
                           
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
            <!-- Main content starts here -->
            
                     <%            
                    }
                %>
                  
         <div class="featured-slider">
                    
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
