<%String uname = null;  
            try {  
                uname = (String) session.getAttribute("suname");  
  
            } catch (Exception e) {  
            }  
            if (uname == null) {  
                response.sendRedirect("./slogin.jsp");  
            }  %>
<html>
<head>
        <title>Mail Notification</title>
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
padding:10px 30px 200px 30px;
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
margin:  30px auto 10px auto;
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
       
			<h1>UCloud</h1>
				<div id="menu">
					<a href="index.jsp">Home</a>
                                        <a href="contact.jsp" >Contact Us</a>
                                        <a href="en/faq.html">FAQ</a>
				</div>
			</div></div></div>
      <div id="wrapper2">
<a href="u.jsp">Upload</a>&nbsp;&nbsp&nbsp&nbsp&nbsp
<a href="d.jsp" >Download</a>&nbsp;&nbsp&nbsp&nbsp&nbsp
<a href="mail.jsp" >Mail</a>&nbsp;&nbsp&nbsp&nbsp&nbsp
<a href="application.jsp"> User Profile</a>&nbsp;&nbsp&nbsp&nbsp&nbsp 
<a href="schange.jsp" >Change Pass</a>&nbsp;&nbsp&nbsp&nbsp&nbsp
      <a href="logout.jsp"> Log out</a></div>
    
                    <div id="wrapper1"> 

        <jsp:useBean id="mail" scope="session" class="java.Mail" />
        <jsp:setProperty name="mail" property="to" param="to" />
        <jsp:setProperty name="mail" property="from"  value="zanaveen3@gmail.com" />

                <!-- Note:  value = add your email id hear -->

        <jsp:setProperty name="mail" property="smtpServ" value="smtp.gmail.com" />
        <jsp:setProperty name="mail" property="subject" param="subject" />
        <jsp:setProperty name="mail" property="message" param="message" />

        <%
String to = mail.getTo();
int result;
result = mail.sendMail();
if(result == 0){
    out.println(" Mail Successfully Sent  ");
    
}
else{
    out.println(" Mail NOT Sent  ");
}
       %>
                    </div>
    </body>
</html>