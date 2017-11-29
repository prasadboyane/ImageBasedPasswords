<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.*"%>
<%@page import = "java.io.*"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
	  <title>Gpas Accounts</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="description" content="Awesome Bubble Navigation with jQuery" />
  <meta name="keywords" content="jquery, circular menu, navigation, round, bubble"/>	
	<!--Links for Navigation bar-->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="css/nav.css" type="text/css" media="screen"/>	
	<!--Links for slider-->
	
    <script src="js/js-image-slider.js" type="text/javascript"></script>
 	<!--Links for pop up-->
	
    
	<!--Search Box style sheet-->
	<link rel="stylesheet" href="css/search.css" type="text/css" media="screen"/>
	    <!--  Code to disable vertical scrollbar in search.css -->
	<!--Content box style sheet-->
<link rel="stylesheet" href="css/contentbox.css" type="text/css" media="screen"/>
<!--Block content css-->
<link rel="stylesheet" href="css/blockbox.css" type="text/css" media="screen"/>
   <!--Links for deactivate alert-->
    <script src="js/deactivatealert.js" type="text/javascript"></script>          
    </head>
    <body>
		<style type="text/css">

 #container {
		
margin: top;
position:relative;
top: -10px;    /*can change posi...grid*/
left: 200px;   /*can change posi...grid*/

			width: 640px;
	
		height: 412px;
	background-img:url("sec_4.jpg");
	}
  
	
</style>
   <script type="text/javascript">
       var password='';
   function myFunction(p)
   {
   //alert ('You have clicked the grid '+p+' !');
   password=password.concat(String(p));
   //alert ('password is '+password+' !');
   document.getElementById("password").value="*";
   document.getElementById("password1").value = password;
   }
   </script>
    
    
    

<div id="container" >
        <form action="check_password" method="post">
        <br><br>
         <h4>Set password for Username:<%= request.getAttribute("username")%></h4>
        <!--  <input type="input" name="username" id="username" value=<%= request.getAttribute("username")%>></input> -->
         <input type="password" name="password" id="password"></input>
         <input type="hidden" name="username" id="username" value="<%= request.getAttribute("username")%>"></input>
         <input type="hidden" name="password1" id="password1"></input>
         
         <br><br>
                         <input type = "submit" name="submit" value ="SUBMIT"> <input type = "reset" name="reset" value ="RESET">
	</form>	
    <br>
	<br>
	<OBJECT CLASSID="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
WIDTH="640" HEIGHT="412" CODEBASE="http://active.macromedia.com/flash5/cabs/swflash.cab#version=5,0,0,0">

<PARAM NAME="MOVIE" VALUE="flash/final.swf">
	<PARAM NAME="ALLOWSCRIPTACCESS" VALUE="ALWAYS" />
	<PARAM NAME="PLAY" VALUE="true">
		<PARAM NAME="LOOP" VALUE="true">
			<PARAM NAME="QUALITY" VALUE="high">
				<PARAM NAME="SCALE" value="noborder">
<EMBED SRC="flash/final.swf"  wmode="transparent"
WIDTH="640" HEIGHT="412" PLAY="true" LOOP="true" QUALITY="high" scale="noborder"

PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"> 
</EMBED>

</OBJECT>
     <img src="http://localhost:8080/Instagrim/PhotoServlet?username=<%= request.getAttribute("username")%>" width="639" height="410"   STYLE="position:absolute; TOP:149px; LEFT:0px; z-index: -1;"/> 
</div>	
   
    
  <header>
  
 <h3> <p><a href="Index.jsp"> Home</a></p></h3>
 <h3></h3> <p><a href="Login.jsp"> Login</a>.</p></h3>
  
</header>
    
    </body>
</html>