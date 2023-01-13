<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <td>学号</td>
                <td>姓名</td>
            </tr>
            <%
                for(int i = 0; i < 100; i++){
                    String name = "Tony" + i;

            %>
            <tr>
                <td><%=i%>></td>
                <td><%=name%>></td>
            </tr>
            <%}
            %>
        </table>

    </body>
</html>