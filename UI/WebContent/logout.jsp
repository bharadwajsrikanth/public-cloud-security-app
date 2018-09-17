<%@page import="java.util.*" %>

<%session.invalidate();%>
You have logged out. 

 <html><head>
<meta http-equiv="pragma" content="no-cache" /> 
<meta http-equiv="expires" content="0" />
<meta http-equiv="Refresh" content="0;url=index.jsp">
 <%response.sendRedirect("index.jsp");  %>
     </head>
     </html>

