<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>  
        <title>Registration</title>
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
padding:30px 30px 50px 30px;
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

#cancel
{
border:2px solid #cccccc;
	width:100px !important;
	margin:10px;
}


h1
{
	text-align:center;
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

        <script src="jquery.js" type="text/javascript"></script>
        <script type="text/javascript" src="uservalid.js" ></script>
         <script type="text/javascript">
             
    function checkPass(){
      //Store the password field objects into variables ...
      var pass1 = document.getElementById('pass');
      var pass2 = document.getElementById('pass2');
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
  </script>
  <script>
      function validate()
{
  var vUser=trim(document.user_registration.user.value);
  var vPwd=trim(document.user_registration.pass.value);
  var pValidate=document.user_registration.phone.value;
   var dValidate=document.user_registration.dob.value;
    var eValidate=document.user_registration.email.value;
      var pass1 = document.user_registration.pass.value;
      var pass2 = document.user_registration.pass2.value;
    var name=document.user_registration.name.value;
    var lastname=document.user_registration.surname.value;

if(pass1!=pass2)
    {
        alert("pass do not match")
        return false;
    }
    else
 if(name=="")
  {
    alert("Name Field is empty")
    return false;
  }
  else if(isAlpha(name)==false)
  {
   alert("Name should not contain numeric values")
   return false;
  }
    else
        if(lastname=="")
        {
            alert("Lastname Field is empty")
            return false;
        }
        else if(isAlpha(lastname)==false)
  {
   alert("Last name should not contain numeric values")
   return false;
  }
    else
        
  if(vUser=="")
  {
    alert("User Name Field is Empty");
    document.user_registration.user.focus();
    return false;
  }
  else if(vUser.length<=3)
      {
          alert("user name should be more than 3 character")
          return false;
      }
  else if(vPwd=="")
  {
   alert("Password Field is Empty");
   document.user_registration.pass.focus();
   return false;
  }
  else 
if(pValidate=="")
  {
    alert("contact Number Field is empty")
    return false;
  }
  else if(isDigits(pValidate)==false)
  {
   alert("Contact No Field is not numeric")
   return false;
  }
  else 
      if(dValidate!="")
  {
    var arDValidate=dValidate.split("/");
    if(arDValidate.length==3)
    {
      if(arDValidate[0].length!=2 || (arDValidate[0]>31))
      {
         alert("Wrong Month format ");
         return false;
      }
      else if(arDValidate[1].length!=2 || (arDValidate[1]>12))
      {
         alert("Wrong Date format ");
         return false;
      }
      else if(arDValidate[2].length!=4 || (arDValidate[2]>1993))
      {
         alert("Wrong Year format");
         return false;
      }
      else
      {
        var dateDate=new Date(arDValidate[2],arDValidate[1]-1,arDValidate[0]);
        if((arDValidate[0]!=dateDate.getDate()))
        {
          alert("Wrong Date Enter e.g date month year is not correct 31 feb 2009");
          return false;
        }
      }
    }
    else
    {
    alert("Wrong Format");
    return false;
    }
  }
  else
  {
   alert("Date is blank");
   return false;
  }
  
   if(eValidate=="")
  {
    alert("Email Field is empty")
    return false;
  }
  else if(checkEmail(eValidate)==false)
  {
   alert("Email Format is not correct")
   return false;
  }  
}
function isAlpha(argvalue) {
  argvalue = argvalue.toString();
  var validChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

    for (var n = 0; n < argvalue.length; n++) {
        if (validChars.indexOf(argvalue.substring(n, n+1)) == -1)
         return false;
    }
  return true;
}
function checkEmail(emailStr) {
       if (emailStr.length == 0) {
           return true;
       }
       var emailPat=/^(.+)@(.+)$/;
       var specialChars="\\(\\)<>@,;:\\\\\\\"\\.\\[\\]";
       var validChars="\[^\\s" + specialChars + "\]";
       var quotedUser="(\"[^\"]*\")";
       var ipDomainPat=/^(\d{1,3})[.](\d{1,3})[.](\d{1,3})[.](\d{1,3})$/;
       var atom=validChars + "+";
       var word="(" + atom + "|" + quotedUser + ")";
       var userPat=new RegExp("^" + word + "(\\." + word + ")*$");
       var domainPat=new RegExp("^" + atom + "(\\." + atom + ")*$");
       var matchArray=emailStr.match(emailPat);
       if (matchArray == null) {
           return false;
       }
       var user=matchArray[1];
       var domain=matchArray[2];
       if (user.match(userPat) == null) {
           return false;
       }
       var IPArray = domain.match(ipDomainPat);
       if (IPArray != null) {
           for (var i = 1; i <= 4; i++) {
              if (IPArray[i] > 255) {
                 return false;
              }
           }
           return true;
       }
       var domainArray=domain.match(domainPat);
       if (domainArray == null) {
           return false;
       }
       var atomPat=new RegExp(atom,"g");
       var domArr=domain.match(atomPat);
       var len=domArr.length;
       if ((domArr[domArr.length-1].length < 2) ||
           (domArr[domArr.length-1].length > 3)) {
           return false;
       }
       if (len < 2) {
           return false;
       }
       return true;
}
function trim(s) {
    return s.replace( /^\s*/, "" ).replace( /\s*$/, "" );
}

function isDigits(argvalue) {
    argvalue = argvalue.toString();
    var validChars = "0123456789";
    var startFrom = 0;
    if (argvalue.substring(0, 2) == "0x") {
       validChars = "0123456789abcdefABCDEF";
       startFrom = 2;
    } else if (argvalue.charAt(0) == "0") {
       validChars = "01234567";
       startFrom = 1;
    }
    for (var n = 0; n < argvalue.length; n++) {
        if (validChars.indexOf(argvalue.substring(n, n+1)) == -1) return false;
    }
  return true;
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
       
			
				<div id="menu">
					<a href="index.jsp">Home</a>
                                        <a href="contact.jsp">Contact Us</a>
                                        <a href="faq.html">FAQ</a>
				</div>
			</div></div></div>
			<div id="wrapper1" style="background-image:url(images/4.jpg);background-size: 940px 1500px;">
			<form onSubmit="return validate();" method="post"  name="user_registration" action="register.jsp" id="user_registration" >
		<p>
		<p>	
		<label  for="user">Username</label><input type="text" class="uname" name="user" id="user"/><br>
                <span class="status" ></span>
		</p>
		<p>	
		<label for="name">Name</label><input type="text" name="name" id="name"/>
		</p>
		<p>	
		<label for="surname">Last Name</label><input type="text" name="surname" id="surname"/>
		</p>
		<p>	
		<label for="email">E-mail</label><input type="text" name="email" id="email"/>
		</p>
                <p>	
		<label for="address">Address</label><input type="text" name="address"/>
		</p>
                <p>	
		<label for="Phone No">Contact No</label><input type="text"  maxlength="10" name="phone" />
		</p>
                <p>
                <label for="dob"> Dob </label><input type="text" name="dob" />
                        </p>
		<p>	
			<label for="pass">Password</label><input type="password" name="pass" id="pass" onkeyup="passwordStrength(this.value)"/>
			 
		</p>
		<p>	
		<label for="pass2">Confirm Password</label><input type="password" onkeyup="checkPass();"  name="pass2" id="pass2" return false;/>
                                                                   <span id="confirmMessage" class="confirmMessage"></span>
		</p>
                
		<p>
			<label for="passwordStrength">Password strength</label>
			<div id="passwordDescription">Password not entered</div>
			<div id="passwordStrength" class="strength0"></div>
		
		<p>	
		<input type="submit" name="submit" id="submit" value="Register">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		</p>
                <%

String user = request.getParameter("user");

String name = request.getParameter("name");

String lastname = request.getParameter("surname");

String email = request.getParameter("email");

String pass = request.getParameter("pass");

String address = request.getParameter("address");

String phone = request.getParameter("phone");

String dob = request.getParameter("dob");

String connectionURL ="jdbc:mysql://localhost:3306/test";

Connection connection = null;

PreparedStatement pstatement = null;

Class.forName("com.mysql.jdbc.Driver").newInstance();

int updateQuery = 0;

if(name!=null && user!=null && lastname!=null && email!=null && pass!=null && address!=null && phone!=null && dob!=null){

if(name!="" && user!="" && lastname!="" && email!="" && pass!="" && address!="" && phone!="" && dob!="" ) {

try {

   
connection = DriverManager.getConnection(connectionURL,"root","root");

String queryString = "INSERT INTO register1(User,Name,Lastname,Email,Pass,Address,Phone,DOB) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

pstatement = connection.prepareStatement(queryString);

pstatement.setString(1, user);

pstatement.setString(2, name);

pstatement.setString(3, lastname);

pstatement.setString(4, email);

pstatement.setString(5, pass);

pstatement.setString(6, address);

pstatement.setString(7, phone);

pstatement.setString(8, dob);
updateQuery = pstatement.executeUpdate();

if (updateQuery != 0) { %>

<br>

<TABLE style="background-color: greenyellow;" style="margin-left: 50px;" WIDTH="30%" border="1">

<tr><th>Your are Successfully Registered!!!</th></tr>

</table>

<%

}

}

catch (Exception ex) {

out.println("Unable to connect to database.");

}

finally {

pstatement.close();

connection.close();

}

}

}

%>

</form>	
			
			</div></body></html>