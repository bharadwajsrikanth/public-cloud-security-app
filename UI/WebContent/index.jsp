<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html>
  <%
      String uname=null; 
      uname = (String) session.getAttribute("suname"); %>
       <%
      String uname1=null; 
      uname1 = (String) session.getAttribute("uname"); %>
<html>
    <head>
        <title>Home Page</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="WOW Slider, jQuery Slider Step, jQuery Slider Set Value" />
	<meta name="description" content="WOWSlider created with WOW Slider, a free wizard program that helps you easily generate beautiful web slideshow" />
	<!-- Start WOWSlider.com HEAD section -->
	<link rel="stylesheet" type="text/css" href="engine1/style.css"/>
	<style type="text/css">a#vlb{display:none}</style>
	<script type="text/javascript" src="engine1/jquery.js"></script>
	<script type="text/javascript" src="engine1/wowslider.js"></script>
	<!-- End WOWSlider.com HEAD section -->
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

	
    </style> </head>
    <body>
    
	
      <div id="layout">
		<div id="header">
			<div id="panel">
				<div class="container">
					<span class="ip_lol">Welcome To UCloud</span> <span class="ip_flag">
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
              
<%if (uname1 == null) { %>    
					<div id="ppcenter">
					</div>
                                        <% 
                                            }
                                        else
                                            {
                                         %>
                                        <div id="ppcenter">
                                            <a href="cart.jsp">Admin Control Panel</a>
					</div>
<%}%>
				</div>
			</div>
       
			<div id="navigation" class="container">
			<h1>UCloud</h1>
				<div id="logo">
					<a href="index.jsp"><img src="imgs/logo.png" width="278px" height="24px" alt="Commerical Street" /></a>
				</div>
				<div id="menu">
					<a href="index.jsp" class="selected">Home</a>
                                        <a href="contact.jsp">Contact Us</a>
                                        <a href="products.jsp">Products</a>
                                        <a href="faq.html">FAQ</a>
				</div>
			</div><div class="container">
				<div id="navigation_line" style="width: 315px;"></div>
			</div><br>
			          <div>
	<!-- Start WOWSlider.com BODY section -->
	<div id="wowslider-container1">
	<div class="ws_images">
<span><img src="data1/images/untitled1.png" alt="" title="" id="wows0"/></span>
<span><img src="data1/images/untitled2.png" alt="" title="" id="wows1"/></span>
<span><img src="data1/images/untitled3.png" alt="" title="" id="wows2"/></span>
<span><img src="data1/images/untitled5.png" alt="" title="" id="wows3"/></span>
<span><img src="data1/images/untitled4.png" alt="" title="" id="wows4"/></span>
</div>
<div class="ws_bullets"><div>
<a href="#wows0" title=""><img src="data1/tooltips/untitled1.jpg" alt=""/>1</a>
<a href="#wows1" title=""><img src="data1/tooltips/untitled2.jpg" alt=""/>2</a>
<a href="#wows2" title=""><img src="data1/tooltips/untitled3.jpg" alt=""/>3</a>
<a href="#wows3" title=""><img src="data1/tooltips/untitled5.jpg" alt=""/>4</a>
<a href="#wows4" title=""><img src="data1/tooltips/untitled4.jpg" alt=""/>5</a>
</div></div>
	<div class="ws_shadow"></div>
	</div>
	<script type="text/javascript" src="engine1/script.js"></script></div>
                      
			<%if (uname == null) { %>
			<div id="teaser" class="container">
    
				<a class="button_teaser button_go" style="background-image: url('imgs/start_en.png');" href="register.jsp"></a>
				<a class="button_teaser button_try" style="background-image: url('imgs/try_en.png');" href="slogin.jsp"></a>
			</div>
                        <%}
                         else {%>
                         <div>
                         </div>
                        
                        <%
                         }
                        %>
                        
                        
			<div id="header_shadow"></div>
                </div>
      </div>
        
            
                                    

        <div style="height: 70px; background: url('imgs/bottom.jpg')repeat-x;">
                  <div id="footer">
                      <div style="margin-left:-500px;">
                          <a style="font-size:110%; text-decoration: none;" href="index.jsp">Home</a>&nbsp;|&nbsp;
                            <a style="font-size:110%; text-decoration: none;" href="faq.jsp">Faq</a>&nbsp;|&nbsp;
                            <a style="font-size:110%; text-decoration: none;" href="contact.jsp">Contact</a>&nbsp;
                      </div>
                            <span style="margin-left:350px;font-size: 110%;">Copyright &copy; UCloud 2015</span> 
							</div></div>

                                           
            
    </body>
</html>


