<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

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

<body>
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
                <h5>Online Banking System</h5> </div>
            <!-- Site Name ends -->
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
                                    <li><a href="cust_login.jsp">Customer Login</a></li>
                                </ul>
                            </li>
                           
                            <li><a href="#">Schemes</a></li>
                            <li><a href="#">Loans</a></li>
                             <li><a href="Apply1.jsp">Apply Online</a></li>
                             <li><a href="#">About</a></li>
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
                 <!-- Main content starts here -->
                

                    <!-- Featured slider starts here -->
               
                
                   <!-- Featured slider ends here -->    

                <!-- Main content ends here -->
                <br><br>
                <br><br>
                <br><br>
			
			 <form class="form-signin" method="POST"  action="Login.jsp">
			  <button class="btn btn-lg btn-success btn-block btn-signin" type="submit">Click Here For Login Process</button>
			  </form>
			  
      
			
          <br><br>
          
          
                     <%            
                    }
                %>
                <br><br>
                <br><br>
                <br><br>
                
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
