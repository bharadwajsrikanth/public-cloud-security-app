<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<%@page import="java.sql.*"%>

<%
String user=request.getParameter("user");
String pass=request.getParameter("pass");
 Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from admin where User='"+user+"' and Pass='"+pass+"'");
int count=0;
          while(rs.next())
          {

                   count++;
          }

                    if(count>0)
          {
             String userName= user;  
            session.setAttribute("uname",userName); 
            out.println("welcome "+user);
            response.sendRedirect("applicaion.jsp");
          }
          else
          {
                       response.sendRedirect("login.jsp?msg=Invalid Username or Password");
          }
%>