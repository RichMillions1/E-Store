<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Order completion</title>
<link rel="stylesheet" type="text/css" href="css/public.css">
<style type="text/css">
a:link {
    font-size: 18px;
    color: #DB8400;
    text-decoration: none;
    font-weight: bolder;
}
a:visited {
    font-size: 18px;
    color: #DB8400;
    text-decoration: none;
    font-weight: bolder;
}
a:hover {
    font-size: 18px;
    color: #DB8400;
    text-decoration: underline;
    font-weight: bolder;
}
</style>
</head>

<body>
<div class="header">RES Online Electronic Equipment Shopping Website</div>
<hr width="100%" />
<div align="center" >
  <p class="text7"> Thank you for shopping! </p>
  <p class="text7"> Your order number is:${ordersid} </p>
  <p class="text7"> You can keep shopping! </p>
   <p class="text7">
       <a href="controller?action=main">Back to main page</a>
  </p>
</div>

<div class="footer">
  <hr  width="100%" />
    @ RES Online 2022 @ </div>
</body>
</html>
