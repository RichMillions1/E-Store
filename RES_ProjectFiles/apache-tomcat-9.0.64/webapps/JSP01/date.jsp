<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>JSP</title>
    </head>
    <body>
        <h2>JSP</h2>
        <h4>Current time: <%=new java.util.Date()%></h4>
        <h4>传输协议：<%= request.getProtocol()%></h4>

    </body>
</html>
