<%--
  Created by IntelliJ IDEA.
  User: itoutsource.cz10
  Date: 2019/12/18
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    //声明代码
    String trans() {
        return "获取当前的结果";
    };
%>
<%!
    int count = 0;
%>
<%
    for (; count < 10; count++) {
        out.println(trans() + count+"<br>");
    }
%>
<html>
<head>
    <title>声明</title>
</head>
<body>

</body>
</html>
