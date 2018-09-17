<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%@ page import="java.io.*" %>
 <%String uname = null;  
            try {  
                uname = (String) session.getAttribute("suname");  
  
            } catch (Exception e) {  
            }  
            if (uname == null) {  
                response.sendRedirect("./slogin.jsp");  
            }  %>
<!DOCTYPE html>  
<html>
    <head>
        <title>Change Password</title>
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

padding:30px 0px 0px 0px;
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
#user_registration
{
	border:1px solid #cccccc;
	margin:auto auto;
	margin-top:0px;
	padding-bottom:30px;
        padding-right:200px;
	width:500px;
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
}

#user_registration label
{
        display: block;  /* block float the labels to left column, set a width */
	float: left; 
	width: 150px;
	margin: 30px 10px 0px 5px; 
	text-align: right; 
	font-weight:bold;
}

#user_registration input
{
	width:250px;
	margin: 30px 10px 0px 5px; 
}

#user_registration p
{
	clear:both;
}

#submit
{
	border:2px solid #cccccc;
	width:100px !important;
	margin:10px;
}

#passwordStrength
{
	height:10px;
	display:block;
	margin-top:10px;
	margin-left:200px;
}

.strength0
{
	width:250px;
	background:#cccccc;
}

.strength1
{
	width:50px;
	background:#ff0000;
}

.strength2
{
	width:100px;	
	background:#ff5f5f;
}

.strength3
{
	width:150px;
	background:#56e500;
}

.strength4
{
	background:#4dcd00;
	width:200px;
}

.strength5
{
	background:#399800;
	width:250px;
}

            .status{
                font-family:verdana;
                font-size:12px;
               padding-left:100px; 
            }

	
    </style>
    <script>
        function passwordStrength(password)
{
	var desc = new Array();
	desc[0] = "Very Weak";
	desc[1] = "Weak";
	desc[2] = "Better";
	desc[3] = "Medium";
	desc[4] = "Strong";
	desc[5] = "Strongest";

	var score   = 0;

	//if password bigger than 6 give 1 point
	if (password.length > 6) score++;

	//if password has both lower and uppercase characters give 1 point	
	if ( ( password.match(/[a-z]/) ) && ( password.match(/[A-Z]/) ) ) score++;

	//if password has at least one number give 1 point
	if (password.match(/\d+/)) score++;

	//if password has at least one special caracther give 1 point
	if ( password.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/) )	score++;

	//if password bigger than 12 give another 1 point
	if (password.length > 12) score++;

	 document.getElementById("passwordDescription").innerHTML = desc[score];
	 document.getElementById("passwordStrength").className = "strength" + score;
}
</script>

    <script>
 function checkPass(){
      //Store the password field objects into variables ...
      var pass1 = document.getElementById('new1');
      var pass2 = document.getElementById('confirm');
      //Store the Confimation Message Object ...
      var message = document.getElementById('confirmMessage');
      //Set the colors we will be using ...
      var goodColor = "#66cc66";
      var badColor = "#ff6666";
      //Compare the values in the password field 
      //and the confirmation field
      if(pass1.value == pass2.value){
        //The passwords match. 
        //Set the color to the good color and inform
        //the user that they have entered the correct password 
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "<br>Passwords Match!"
      }
      else{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "<br>Passwords Do Not Match!"
      }
    }  
    
    function validate()
  {
        var vPwd=document.user_registration.new1.value;
         var vcPwd=document.user_registration.confirm.value;
         var vcurpwd=document.user_registration.current.value;
    var pass1 = document.user_registration.new1.value;
      var pass2 = document.user_registration.confirm.value;


 if(vPwd=="")
  {
   alert("Password Field is Empty");
   document.user_registration.new1.focus();
   return false;
  }
  else if(vcPwd=="")
      {
          alert("Confirm Password Field is Empty");
          document.user_registration.confirm.focus();
   return false;
      }
        else if(vcurpwd=="")
      {
          alert("current Password Field is Empty");
          document.user_registration.current.focus();
   return false;
      }
      
     else if(pass1!=pass2)
    {
        alert("pass do not match")
        return false;
    }
  }

    </script>
           </head>
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
       
			<h1>UCloud</h1>
				<div id="menu">
					<a href="index.jsp">Home</a>
                                        <a href="contact.jsp" >Contact Us</a>
                                        <a href="faq.html">FAQ</a>
				</div>
			</div></div></div>
        <div id="wrapper2">
<a href="u.jsp">Upload</a>&nbsp;&nbsp&nbsp&nbsp&nbsp
<a href="d.jsp" >Download</a>&nbsp;&nbsp&nbsp&nbsp&nbsp
<a href="mail.jsp" >Mail</a>&nbsp;&nbsp&nbsp&nbsp&nbsp
<a href="application.jsp"> User Profile</a>&nbsp;&nbsp&nbsp&nbsp&nbsp 
<a href="schange.jsp" >Change Pass</a>&nbsp;&nbsp&nbsp&nbsp&nbsp
      <a href="logout.jsp"> Log out</a></div>
        <br>
			<div id="wrapper1">
			<form method="post" onSubmit="return validate();" name="user_registration" action="schangePassword.jsp" id="user_registration" >
                            <p> 
		<p>	
		<label  for="user">Current Password</label>&nbsp;&nbsp;&nbsp;<input type="password" class="uname" name="current" id="current"/>
                
		</p>
		<p>	
			<label for="pass">Password</label>&nbsp;&nbsp;&nbsp;<input type="password" name="new1" id="new1" onkeyup="passwordStrength(this.value)"/>
			 
		</p>
                <p>	
			<label for="cpass">Confirm Password</label>&nbsp;&nbsp;&nbsp;<input type="password" name="confirm" id="confirm" onkeyup="checkPass();"/>
			  <span id="confirmMessage" class="confirmMessage"></span>
		</p>
	
		<input type="submit" name="submit" id="submit" value="Change Password">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         

</form><br /><br/><%String msg=request.getParameter("msg");
if(msg!=null){
    %>
<TABLE style="background-color: fff; margin-left:65px; " border="1">

    <tr><th style="padding: 10px; color: red;"><%=msg%></th></tr>

</table>
<%
}
    %>	 <div id="header" style="height:40px;"></div>
</div>
		</body>
                </html>
