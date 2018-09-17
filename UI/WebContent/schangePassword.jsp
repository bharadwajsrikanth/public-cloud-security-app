 <%String uname1 = null;  
            try {  
                uname1 = (String) session.getAttribute("suname");  
  
            } catch (Exception e) {  
            }  
            if (uname1 == null) {  
                response.sendRedirect("./slogin.jsp");  
            }  %>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String currentPassword=request.getParameter("current");
String Newpass=request.getParameter("new1");
String conpass=request.getParameter("confirm");
String connectionURL = "jdbc:mysql://localhost:3306/test";;;
Connection con=null;
String pass="";
int id=0;
try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(connectionURL, "root", "root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from register1 where User='"+uname1+"'");
while(rs.next()){
id=rs.getInt(9);
pass=rs.getString(5);
}
System.out.println(id+ " "+pass);
if(pass.equals(currentPassword)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update register1 set Pass='"+Newpass+"' where id='"+id+"'");
response.sendRedirect("schange.jsp?msg=Password changed successfully");
st1.close();
con.close();
}
else{
response.sendRedirect("schange.jsp?msg=Invalid Current Password");
}
}
catch(Exception e){
out.println(e);
}
%>
