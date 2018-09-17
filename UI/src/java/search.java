package java;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.sql.*;
import java.sql.*;
import java.util.*;

public class search extends HttpServlet{

public void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException,IOException{
response.setContentType("text/html");
PrintWriter out = response.getWriter();

System.out.println("MySQL Connect Example.");
Connection conn = null;
String url = "jdbc:mysql://localhost:3306/";;
String dbName = "test";
String driver = "com.mysql.jdbc.Driver";
String userName = "root";
String password = "root";


Statement st;
try {
Class.forName(driver).newInstance();
conn = DriverManager.getConnection(url+dbName,userName,password);
System.out.println("Connected to the database");
String name = request.getParameter("name");
String query = "select * from prolist where Product LIKE '"+name+"%'";
st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
out.println("<table border='1'><tr><th>Row Num</th><th>Item Code</th><th>Item Name</th><th>Item Price</th></tr>");
while(rs.next()){

out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
}
out.println("</table>");
conn.close();
System.out.println("Disconnected from database");
} catch (Exception e) {
e.printStackTrace();
}
}
}