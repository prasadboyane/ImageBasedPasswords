

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
    <link rel="stylesheet" type="text/css" href="css/treeview.css">
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/component.css">
    <link rel="stylesheet" href="css/font-awesome-ie7.css">
    <link rel="stylesheet" href="css/custom-styles.css">
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
                <h5>Online Banking System</h5>
            </div>
        </div>

        <body>
            <!--================REGISTRATION FORM================-->
            <div class="container reg-form">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-4 well well-sm col-md-offset-4">
            <legend><a href="Index2.jsp"><i class="fa fa-globe"></i></a> Apply Online For New Account!</legend>
            <form action="Register" method="POST" class="form" role="form">
            <div class="row">
                <div class="col-xs-6 col-md-6">
                    
                 <label for="" style="margin-left:20px;">From Account *</label><input class="form-control" style="margin-bottom:10px; margin-left:15px;" name="FAcc" value=${Accno} placeholder="From Account Number" type="text"
                        required autofocus />
                </div>
                <div class="col-xs-6 col-md-6">
                    <label for="">
                Last Name *</label><input class="form-control" style="margin-bottom:10px;" onkeyup="minus();" id="Bal" name="Bal" value=${Bal} placeholder="Balance" type="text" />
                </div>
            </div>
            <lable style="margin-bottom:10px;"><h4>To Account Number *</h4></lable>
            <input class="form-control" style="margin-bottom:10px;" id="TAcc" name="TAcc"  placeholder="To Account Numner" type="text" required/>
			 
               <lable style="margin-bottom:10px;"><h4>Bank Name *</h4></lable>
            <input class="form-control" style="margin-bottom:10px;" id="TAcc" name="Bname"  placeholder="To Account Numner" type="text"  required/>
			     
			      <lable style="margin-bottom:10px;"><h4>IFSC code *</h4></lable>
            <input class="form-control" style="margin-bottom:10px;" name="Icode" placeholder="IFSC CODE" type="text"  required/>
            
            <lable style="margin-bottom:10px;"><h4>Date of Transfer</h4></lable>
            <input class="form-control" style="margin-bottom:10px;" name="DOT" placeholder="Date of Transfer" type="text"  required/>
            
            <lable style="margin-bottom:10px;"><span class="req"> </span><h4>Transfer Type</h4></lable>
            <select class="selectpicker" style="margin-left:55px;" name="TOF">
                                       
                                            <option>RTGS</option>
                                            <option>IMPS</option>
                                            <option>NEFT</option>
            							    </select>
            							    
			      <lable style="margin-bottom:10px;"><h4>Remarks</h4></lable>
            <input class="form-control" style="margin-bottom:10px;" name="Remark" placeholder="Particulars" type="text" />
            
                                  <lable style="margin-bottom:10px;"><h4>Transfer Amount</h4></lable>
            <input class="form-control" style="margin-bottom:10px;" id="Tamt" onkeyup="sum();" name="Tamt" placeholder="Withdrawal Amount" type="text" />
                 
                                    
										    
                                   
  <script type="text/javascript">
                            function TranId() {
                   document.forms[0].TranId.value=(Math.round(Math.random()*9999+1));
                              }
                                      onload=TranId
                             
                                      </script>
                                      <script>
                                        function sum() {

                                            var Bal = parseInt(document.getElementById("Bal").value);
                                            var Tamt = parseInt(document.getElementById("Tamt").value);
                                            var result = parseInt(Bal)- parseInt(Tamt);
                                            if (!isNaN(result)) {
                                                document.getElementById("TotAmt").value = result;
                                            }

                                        }

                                    </script>
                                    <lable style="margin-bottom:10px;"><h4>Total Balance</h4></lable>
            <input class="form-control" style="margin-bottom:10px;" id="TotAmt" name="TotBal" placeholder="Total Balance" type="text" />
                 
                         <lable style="margin-bottom:10px;"><h4>Transaction Id</h4></lable>
            <input class="form-control" style="margin-bottom:10px;" name="TranId" placeholder="Transaction Id" type="text" />

               <button type="submit" value="Transfer" class="btn btn-info btn-lg btn-round-lg" style="border-radius: 22.5px; width:100%;">Transfer</button>
                                
                                                       </form>
                            </div>
                        </div>
                    </div>

                </div>


    </body>
