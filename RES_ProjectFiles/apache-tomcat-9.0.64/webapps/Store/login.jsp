<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="css/public.css">
</head>

<body>
<div class="header">RES Online Electronic</div>
<hr width="100%" />
<ul>
  <c:forEach var="error" items="${errors}" >
    <li class="error">${error}</li>
  </c:forEach>
</ul>
<form action="controller" method="post" >
  <table width="100%" align="center" >
    <tr height="40" >
      <td colspan="2" align="center"><strong>Welcome to Login</strong></td>
    </tr>
    <tr height="40" >
      <td width="50%" align="right" ><img src="images/3.jpg" align="absmiddle"/>&nbsp;&nbsp;Account:</td>
      <td><input type="text" name="userid" class="textfield" /></td>
    </tr>
    <tr height="40" >
      <td width="50%" align="right"><img src="images/2.jpg" align="absmiddle"/>&nbsp;&nbsp;Password:</td>
      <td><input type="password" name="password" class="textfield" /></td>
    </tr>
    <tr height="40" >
      <td align="right">&nbsp;</td>
      <td ><input type="image" src="images/loginButton.png" onclick="document.forms[0].fn.value='login'" />
        &nbsp;&nbsp;&nbsp;&nbsp; <a href="controller?action=reg_init"><img src="images/reg_button.png" border="0" /></a></td>
    </tr>
  </table>
  <input type="hidden" name="action" value="login">
</form>
<div class="footer">
  <hr  width="100%" />
  @ RES Online 2022 @ </div>
</body>
</html>