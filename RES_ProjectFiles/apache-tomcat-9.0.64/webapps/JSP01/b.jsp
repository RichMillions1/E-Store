<%--
  Created by IntelliJ IDEA.
  User: richm
  Date: 7/30/2022
  Time: 7:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page B</title>
</head>
<body>
  <jsp:useBean id="userBean" scope="session" class="com.example.jspproject.User"/>
  <jsp:getProperty name="userBean" property="userId"/>
  <jsp:getProperty name="userBean" property="userName"/>
</body>
</html>
