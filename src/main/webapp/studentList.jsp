<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: itoutsource.cz10
  Date: 2019/12/18
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page info="a demo for list" %>
<html>
<head>
    <title>学生列表</title>
</head>
<body>
<div align="center">
    <table>
        <tr>
            <td>id</td>
            <td>姓名</td>
            <td>分数</td>
        </tr>
        <%
            int i = 1;
            String color1 = "99ccff";
            String color2 = "88cc33";
            String color = "";
            int random = 0;
            for (; i < 10; i++) {
                random = (int) (Math.random() * 100);
                if (i % 2 == 0) {
                    color = color1;
                } else {
                    color = color2;
                }
                out.println("<tr bgcolor=" + color + ">");
                out.println("<td>" + i + "</td>");
                out.println("<td>小明" + i + "</td>");
                out.println("<td>" + random + "</td>");
                out.println("</tr>");
            }
        %>
    </table>
</div>
</body>
</html>
