<%@page language="java"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>  
        <script type="text/javascript">
    function myfunc () {
        var frm = document.getElementById("form1");
        frm.submit();
    }
    window.onload = myfunc;
</script> 

    </head>
<body>
    <form name="form" action="mail1.jsp" method="POST" id="form1">
<%
String email=request.getParameter("email");
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
String query = "select * from register1 where email='"+email+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>  



    <input type="text" name="to" value="<%=email%>" readonly> 

          <input type="text" name="subject" value="Passwoed recovery" hidden> 
            
             
<textarea name="message" rows="8" cols="30" hidden>
Your requested account detail is 

Username:<%=rs.getString("User")%>

Password:<%=rs.getString("Pass")%>

     </textarea>
           

                        <input type="submit" value="Send Mail" onLoad="fnSubmit();">
     <%
}
}
catch(Exception e){}
%></form>
</body>
</html> 

