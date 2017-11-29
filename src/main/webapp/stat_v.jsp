

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
            <%
            String acc = (String) request.getAttribute("acc");
            String Bal = (String) request.getAttribute("Bal");
            String dod = (String) request.getAttribute("dod");
            String damt = (String) request.getAttribute("damt");
            String part = (String) request.getAttribute("part");
            String totbal = (String) request.getAttribute("totbal");
            String tranid = (String) request.getAttribute("tranid");

           

        %>

        <br>
       <h3>Account Number <%=acc%> </h3>
       
        <br><br>
        <font color="green">Your Account Balance</font>  : <%=Bal%>
        <br><br>
         <br><br>
        <font color="green">Your Account Balance</font>  : <%=dod%>
        <br><br>
         <br><br>
        <font color="green">Your Account Balance</font>  : <%=damt%>
        <br><br>
         <br><br>
        <font color="green">Your Account Balance</font>  : <%=part%>
        <br><br>
         <br><br>
        <font color="green">Your Account Balance</font>  : <%=totbal%>
        <br><br>
         <br><br>
        <font color="green">Your Account Balance</font>  : <%=tranid%>
        <br><br>

                </div>
            </div>
    </div>


    </body>
