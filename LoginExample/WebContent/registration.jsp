<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","csda0902");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from users where username='"+user+"'");
    if(rs.next())
    {    
        out.println("<font color=red>");
        out.println("Name already taken");
        out.println("</font>");

    }else {
    int i = st.executeUpdate("insert into users(FirstName, Lastname, username, password) values ('" + fname + "','" + lname + "','" + user + "','" + pwd + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("hashqr.html");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("LoginPage.jsp");
    }
    }
%>