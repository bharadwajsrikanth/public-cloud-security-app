
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%String uname = null;  
            try {  
                uname = (String) session.getAttribute("suname");  
  
            } catch (Exception e) {  
            }  
            if (uname == null)
            {
            }  
else                               {  
                response.sendRedirect("./scart.jsp");  
            }  %>
<html>
    <head>
        <title>User Login</title>
	<link rel="stylesheet" type="text/css" href="main.css"/>
<link href="login-box.css" rel="stylesheet" type="text/css" />

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
    <script>
function validate(){
var username=document.form.user.value;
var password=document.form.pass.value;
if(username==""){
 alert("Enter Username!");
  return false;
}
if(password==""){
 alert("Enter Password!");
  return false;
}
return true;
}

</script>
<style type="text/css">
table.hovertable {
	font-family: verdana,arial,sans-serif;
	font-size:15px;
        margin-left:300px;
	color:#000;
        alignment-adjust: central;
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
       
        border-style: solid;
          
}
table.hovertable th {
	background-color:#fff;
	
	padding: 8px;
        color:#fff;
       width:100px;
	border-style: solid;
	 background-image:url('imgs/bg.png');
}
table.hovertable tr {
	background-color:#fff;
       border-style: solid;
}
table.hovertable td {
	border-width: 0px;
	padding: 8px;
	border-style: solid;
	border-color: #D8D8D8 ;
}

</style>
    <body>
    
	
      <div id="layout">
		<div id="header">
			<div id="panel">
				<div class="container">
					<span class="ip_lol">Welcome To UCloud</span> <span class="ip_flag">
        </span>
					<div id="panel_right">
						
					</div>
				</div>
			</div>
       
			<div id="navigation" class="container">
				<h1>UCloud</h1>
				<div id="menu">
					<a href="index.jsp">Home</a>
                                        <a href="contact.jsp" >Contact Us</a>
                                        <a href="products.jsp">Products</a>
                                        <a href="faq.html">FAQ</a>
				</div>
			</div></div></div>
                    <div id="wrapper1">
   



                        <div style="padding: 50px 0 50px 250px;">


<div id="login-box">

<H2>Login</H2>
<form name="form" method="post" action="scheck.jsp" onsubmit="javascript:return validate();">
<div id="login-box-name" style="margin-top:20px;">User Name :</div><div id="login-box-field" 
style="margin-top:20px;"><input name="user" class="form-login"  value="" size="30" 
maxlength="2048" /></div>
<div id="login-box-name">Password:</div><div id="login-box-field"><input name="pass" 
type="password" class="form-login" title="Password" value="" size="30" maxlength="2048" 
/></div>
<br />
<br />
<br />
<div >
<input style="padding:13px;"  value="Login" type="submit"/></div>
</form>
<br />
<a href="enter email.jsp">Forgot Password?</a>
<%String msg=request.getParameter("msg");
if(msg!=null){
    %>
<TABLE style="background-color: fff; margin-left:65px; " border="1">

    <tr><th style="padding: 10px; color: red;"><%=msg%></th></tr>

</table>
<%
}
    %>
</div>
</div>

</div></body>
    </html>