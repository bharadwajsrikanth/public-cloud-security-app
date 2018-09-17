<%String uname = null;  
            try {  
                uname = (String) session.getAttribute("suname");  
  
            } catch (Exception e) {  
            }  
            if (uname == null) {  
                response.sendRedirect("./slogin.jsp");  
            }  %>
<html><head>
       
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
padding:50px 0px 0px 0px;
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
background-image:url(images/contact.jpg);
background-repeat: no-repeat;
background-position:center; 
}

#user_registration
{
    background-image:transparent;
	border:1px solid #cccccc;
	margin:auto auto;
	margin-top:0px;
	padding-bottom:30px;
	width:550px;
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

opacity:0.5;
filter:alpha(opacity=30); 
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
#user_registration textarea
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
	
    </style>
    <script>
            function validate()
{
  var Subject1=document.user_registration.subject.value;
  var Message1=document.user_registration.message.value;
  if(Subject1=="")
  {
    alert("Subject is empty")
    return false;
  }
    else if(Message1=="")
    {
        alert("message is empty")
    return false;
    }        
   else if(Message1.length<100)
        {
            alert("Message Should be minium 100 charater")
               return false;
        }
      

   
}
    </script>
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
    
                    <div id="wrapper1"> 

 
        <form onSubmit="return validate();" action="sendMail.jsp" method="POST" name="user_registration" id="user_registration">
                        <input type="text" name="to" value="zanaveen3@gmail.com" hidden/> 

            <p>
                <p><label>Subject</label><input type="text" name="subject" value="" /> </p>
            
                <p>
     <label >Message</label><textarea name="message" rows="8" cols="30">YOur email address
Your Username</textarea></p>
           
<p>
                        <input type="submit" value="Send Mail" />
</p>    
        </form><br><br>
        <div id="header" style="height:40px;"></div>
           </div>
    </body>
</html>

