<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>今天的日期</title>
</head>
<body>

<%
    DateFormat df = new SimpleDateFormat("yyyy年MM月dd日");
    Date date = new Date();
    String strDate = df.format(date);
%>

今天的日期：<%=strDate%>
<br>
</body>
</html>
