<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<%@ page import = "com.datastax.driver.core.BoundStatement"%>
<%@ page import = "com.datastax.driver.core.Cluster"%>
<%@ page import = "com.datastax.driver.core.PreparedStatement"%>
<%@ page import = "com.datastax.driver.core.ResultSet"%>
<%@ page import = "com.datastax.driver.core.Row"%>
<%@ page import = "com.datastax.driver.core.Session"%>
<%@ page import = "com.datastax.driver.core.*"%>
<%@ page import = "uk.ac.dundee.computing.aec.instagrim.lib.CassandraHosts"%>

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
             

            <body>
                <!--================REGISTRATION FORM================-->
               <div class="container reg-form">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-4 well well-sm col-md-offset-4">
            <legend><a href="Index2.jsp"><i class="fa fa-globe"></i></a> Apply Online For New Account!</legend>
            <form action="WithRet" method="POST" class="form" role="form">
            <div class="row">
                <div class="col-xs-6 col-md-6">
                    
                 <label for="" style="margin-left:20px;">Account Number</label><input class="form-control" style="margin-bottom:10px; margin-left:15px;" name="Accno" placeholder="Account Number" type="text"
                        required autofocus />
                </div>
                            </div>
                            <button type="submit" value="SUBMIT" class="btn btn-info btn-lg btn-round-lg" style="border-radius: 22.5px; width:100%;">Submit</button>
           
</form>
                            </div>
                </div>
                </div>

</body>
</html>