<%@ page contentType="text/html; charset=utf-8" %>
<html>
<body>
<form action="checklogin.jsp" method="post">
    <table>
        <tr>
            <td>输入用户名：</td>
            <td>
                <input type="text" name="username" value=''>
            </td>
        </tr>
        <tr>
            <td>输入密码：</td>
            <td><input type="password" name="password" ></td>
        </tr>
        <tr colspan=2>
            <td><input type="submit" value="login"></td>
        </tr>
    </table>
</form>
</body>
</html>

