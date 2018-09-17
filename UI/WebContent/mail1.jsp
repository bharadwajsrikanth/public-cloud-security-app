<meta http-equiv="Refresh" content="1;url=index.jsp">
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