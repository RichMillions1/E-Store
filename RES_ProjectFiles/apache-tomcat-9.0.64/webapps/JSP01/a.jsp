<%--
  Created by IntelliJ IDEA.
  User: richm
  Date: 7/30/2022
  Time: 6:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page A</title>
</head>
<body>
<jsp:useBean id="userBean" scope="session" class="com.example.jspproject.User"/>
<jsp:setProperty name="userBean" property="userId" value="1000"/>
<jsp:setProperty name="userBean" property="userName" value="Tony"/>
<form action="b.jsp" method="post">
    <input type="submit" value="Page B">
</form>

</body>
</html>
