<%@page import="java.sql.*"%>
 <%String uname = null;  
            try {  
                uname = (String) session.getAttribute("uname");  
  
            } catch (Exception e) {  
            }  
            if (uname == null) {  
                response.sendRedirect("./login.jsp");  
            }  %>
<% 
String ide=request.getParameter("id");
int num=Integer.parseInt(ide);
String user = request.getParameter("user");

String name = request.getParameter("name");

String lastname = request.getParameter("surname");

String address = request.getParameter("address");

String email = request.getParameter("email");

String pass = request.getParameter("pass");

String dob = request.getParameter("dob");


String contact=request.getParameter("contact");
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root", "GOGO");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update register1 set User='"+user+"',Name='"+name+"',Lastname='"+lastname+"',Email='"+email+"',Pass='"+pass+"',Address='"+address+"',Phone="+contact+",DOB='"+dob+"' where id='"+num+"'");
response.sendRedirect("applicaion.jsp");
}
catch(Exception e){
System.out.println(e);
    }
%>