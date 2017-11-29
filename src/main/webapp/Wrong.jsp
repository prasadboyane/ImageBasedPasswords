<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<script language="JavaScript" type="text/javascript">
function confirmLogout(){
var agree = confirm("Are you sure you wish to logout?");

if(agree){
return true;

}else{

return false;

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
            
            	<center>
			<h3>Something went wrong !</h3>
			 Invalid Username or Password.<a href="Login.jsp"> Please try again.</a>
			 <br>
		      <a href="Index2.jsp">Contact Your Nearest Branch For Help </a>
                        </center>
            <br>
            <br>
            <!-- Banner ends here -->
            <!-- Main content starts here -->
            <div class="featured-blocks">
                <div class="row-fluid"> </div>
                <div class="row-fluid">
                    <div class="span4">
                        <div class="block">
                            <div class="block-title">
                                <h1>Safe Banking</h1>
                                <h2> </h2> </div>
                            <div class="block-content">
                                <p></p> <a href="#" class="btn"><i class="fw-icon-circle-arrow-right"></i> </a> </div>
                        </div>
                    </div>
                    <div class="span4">
                        <div class="block">
                            <div class="block-title">
                                <h1>Easy Apply</h1>
                                <h2> </h2> </div>
                            <div class="block-content">
                                <p></p> <a href="#" class="btn"><i class="fw-icon-circle-arrow-right"></i> </a> </div>
                        </div>
                    </div>
                    <div class="span4">
                        <div class="block">
                            <div class="block-title">
                                <h1>Image Password</h1>
                                <h2></h2> </div>
                            <div class="block-content">
                                <p></p> <a href="#" class="btn"><i class="fw-icon-circle-arrow-right"></i></a> </div>
                        </div>
                    </div>
                    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <h2>Pellen tesque lacinia</h2>
                        <p></p>
                        <p>.</p>
                    </div>
                </div>
            </div>
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
