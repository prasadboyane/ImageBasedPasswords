<!--<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>-->
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
                            <li><a href="#">About</a></li>
                            <li><a href="#">Schemes</a></li>
                            <li><a href="#">Loans</a></li>
                            <li><a href="#">Help</a></li>
                            <li class="dropdown" style="color:#FFF"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="cust_login.jsp">Customer Login</a></li>
                                    <li><a href="corp_login.jsp">Corporate Login</a></li>
                                </ul>
                            </li>
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
             <!--Start of Next Navigation Bar -->
                       
            
                         <!--End of Navigation Bar -->
    
            <!--================REGISTRATION FORM================-->
            <div class="container reg-form">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-4 well well-sm col-md-offset-4">
            <legend><a href="http://www.jquery2dotnet.com"><i class="fa fa-star"></i></a> New Current Account </legend>
            <form action="#" method="post" class="form" role="form">
            <div class="row">
                <div class="col-xs-6 col-md-6">
                    <input class="form-control" style="margin-bottom:10px; margin-left:15px;" name="firstname" placeholder="First Name" type="text"
                        required autofocus />
                </div>
                <div class="col-xs-6 col-md-6">
                    <input class="form-control" style="margin-bottom:10px;" name="lastname" placeholder="Last Name" type="text" required />
                </div>
            </div>
               <div class="form-group">
                                        <label for="lastname"><span class="req"></label>
                                        <input class="form-control" type="text" name="OName" id="txt" onkeyup="Validate(this)" placeholder="Oragnization Name" required />
                                        <div id="errLast"></div>
                                    
                
                
               <div class="form-group">
                                <label for="DOB"><span class="req">* </span> Date Of Birth </label>
                                <input class="form-control" type="date" name="DOB" id="txt" onkeyup="Validate(this)" placeholder="" required />
                                <div id="errLast"></div>
                            </div>
               
                
                 <input class="form-control" style="margin-bottom:10px;" name="address" placeholder="Address" type="text" />
                <input class="form-control" style="margin-bottom:10px;" name="email" placeholder="Email" type="text" />
                <input class="form-control" style="margin-bottom:10px;" name="phonenumber" placeholder="Phone No." type="text" />
     
            <input class="form-control" style="margin-bottom:10px;" name="pan" placeholder="PAN No." type="text" />
                <input class="form-control" style="margin-bottom:10px;" name="aadhar" placeholder="Adhar No." type="text" />
                
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
                                <label for="occupation"><span class="req"></span> Type of Business </label>
                                <select class="selectpicker" name="TOB">
                                    <option>Retailer</option>
                                    <option>Dealer</option>
                                    <option>Wholeseller</option>
                                    <option>Distributor</option>
                                </select>
                            </div>
                			
							<input class="form-control" style="margin-bottom:10px;" name="Shoplic" placeholder="ShopAct Lic. No." type="text" />
             
                            
                            <div class="form-group">
                                <label for="occupation"><span class="req"></span>Operation </label>
                                <select class="selectpicker" name="Too">
                                    <option>Self</option>
                                    <option>Joint</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="occupation"><span class="req"></span>Joint Operations </label>
                                <select class="selectpicker" name="Joi">
                                    <option>EOS</option>
                                    <option>BOTH</option>
                                </select>
                            </div>
            <input class="form-control" style="margin-bottom:10px;" name="Accno" placeholder="Account No." type="text" />
               
                 <label for="Accno"><span class="req"></label>
                                <input class="form-control" type="text" name="Bal" id="txt" onkeyup="Validate(this)" placeholder="Balance" required />
                                <div id="errLast"></div>
                            
                            <div class="form-group">
                                <label for="username"><span class="req"></label>
                                <input class="form-control" type="text" name="ROI" id="txt" onkeyup="Validate(this)" placeholder="Rate of Interest" required />
                                <div id="errLast"></div>
                            </div>
                             <label for="DOA"><span class="req">* </span> Date Of Account Opening </label>
                                <input class="form-control" type="date" name="DOAO" id="txt" onkeyup="Validate(this)" placeholder="" required />
							<div class="form-group">
                                <label for="username"><span class="req"></label>
                                <input class="form-control" type="text" name="uname" id="txt" onkeyup="Validate(this)" placeholder="User Name" required />
                                <div id="errLast"></div>
                            </div>
							<div class="form-group">
                                <label for="username"><span class="req"></label>
                                <input class="form-control" type="password" name="pass" id="txt" onkeyup="Validate(this)" placeholder="Password" required />
                                <div id="errLast"></div>
                            </div>
                            
                            

            <div class="form-group">
                                <?php //$date_entered = date('m/d/Y H:i:s'); ?>
                                    <input type="hidden" value="<?php //echo $date_entered; ?>" name="dateregistered">
                                    <input type="hidden" value="0" name="activate" />
                                    <hr>
                                    <input type="checkbox" required name="terms" onchange="this.setCustomValidity(validity.valueMissing ? 'Please indicate that you accept the Terms and Conditions' : '');" id="field_terms">
                                    <label for="terms">I agree with the <a href="terms.php" title="You may read our terms and conditions by clicking on this link">terms and conditions</a> for Registration.</label><span class="req">* </span> </div>
                            <h5>You will receive an email to complete the registration and validation process. </h5>
                            <h5>Be sure to check your spam folders. </h5> </fieldset>
                            </center>
            <button type="button" class="btn btn-success btn-lg btn-round-lg" style="border-radius: 22.5px; width:100%;">Upload Document</button>
            </form>
        </div>
    </div>
</div>
<!--========================REGISTRATION FORM END=================-->

    <script src="js/jquery-3.1.1.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/main.js"></script>
</body>

</html>