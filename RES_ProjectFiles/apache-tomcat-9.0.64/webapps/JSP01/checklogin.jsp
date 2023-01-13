<%@ page contentType="text/html; charset=utf-8"%>
<html>
<body>
<%--进行登录检查--%>
<%
    String name = request.getParameter("username");
    String password = request.getParameter("password");
    // if 验证通过，forward-->sucess.jsp
    //else forward-->login.jsp
    if (name.equals("tony") && password.equals("123")) { %>
<jsp:forward page="sucess.jsp" >
    <jsp:param name="userid" value="1000"/>
</jsp:forward>
<% }
else { %>
<jsp:forward page="login.jsp" />
<% } %>
</body>
</html>