<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html>
  <%
      String uname=null; 
      uname = (String) session.getAttribute("suname"); %>
<html>
    <head>
        <title>Contact Us</title> 
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="main.css"/>
   
    <style>

#wrapper {
    clear:left;
width: 940px;
margin-top: -330px;
margin-left: -25px;
padding:30px 30px 200px 30px;
box-shadow: 0 0 15px #bababa;
-moz-box-shadow: 0 0 15px #bababa;
webkit-box-shadow: 0 0 7px #bababa;
-moz-border-radius:3px;
-o-border-radius:3px;
-o-box-shadow: 0 0 15px #bababa;
-webkit-border-radius:3px;
behavior:url(border-radius.htc);
border: #cdcdcd 1px solid;
background-color:#fff;
}
#wrapper1 {
width: 940px;
padding:30px 30px 200px 30px;
-moz-border-radius:3px;
-o-border-radius:3px;
-o-box-shadow: 0 0 15px #bababa;
-webkit-border-radius:3px;
behavior:url(border-radius.htc);
border: #cdcdcd 1px solid;
background-color:#fff;
box-shadow: 0 0 7px #bababa;
-moz-box-shadow: 0 0 7px #bababa;
-webkit-box-shadow: 0 0 7px #bababa;
margin: 10px auto 10px auto;
}
    </style>
    </head>
    <body>
    
	
      <div id="layout">
		<div id="header">
			<div id="panel">
				<div class="container">
					<span class="ip_lol">Welcome To Commercial Street</span> <span class="ip_flag">
        </span>
					                                  <%if (uname == null) { %>    
					<div id="panel_right">
						<%
            Date date = new Date();
   out.print( "<h3 align=\"center\">" +date.toString()+"</h3>");
%>
					</div>
                                        <% 
                                            }
                                        else
                                            {
                                         %>
                                        <div id="panel_right">
                                            <a href="scart.jsp">Control Panel</a>
					</div>
<%}%>
				</div>
			</div>
       
			<div id="navigation" class="container">
				<div id="logo">
					<a href="index.jsp"><img src="imgs/logo.png" width="278px" height="24px" alt="Commerical Street" /></a>
				</div>
				<div id="menu">
					<a href="index.jsp">Home</a>
                                        <a href="contact.jsp" class="selected">Contact Us</a>
                                        <a href="products.jsp">Products</a>
                                        <a href="faq.html">FAQ</a>
				</div>
			</div></div></div>
        <div id="wrapper1" style="background-image:url(images/crack.jpg);background-repeat:no-repeat;background-position:center; ">
            <br><br>    
<h2 >IDEA SOLUTIONS</h2>

    <span style="font-size:19px;">  N0,13, 1st Floor, Opp to Karnataka ATM, Prasanna Circle,  
    Magadi Main Road.<br>
       Bangalore-560023.<br><br>
       B.o: &gt; S.P.Road &lt; Malleshwaram<br>

Email:ideasolutionsit@gmail.com</span>
<br>
<br>
<br>
<br>
<b>RAGHAVENDRA . J</b><br>
9980812153
 <br><br>
<b>SARAVANAN</b><br>
9343712424 
<br><br>
<span style="color:#fff">
<b style="color:#fff">OFFICE</b><br>
080-23103227
<br><br>
</span>
<div style="margin-top:-300px;background-image:url(images/contact.gif);background-repeat:no-repeat;background-position:right;height:300px;"></div>
</div>	          
    </body>
</html>
