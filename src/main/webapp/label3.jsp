<%--
  Created by IntelliJ IDEA.
  User: itoutsource.cz10
  Date: 2019/12/20
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>uri相关的标签</title>
</head>
<body>
c:import导入
<br>
绝对路径
<br>
<c:import url="http://127.0.0.1:8080/meavnweb_war/label2.jsp"/>
<br>
相对路径
<br>
<c:import url="label1.jsp"/>
<br>
跳转页面
<br>
<a href="<c:url value="label.jsp">
       <c:param name="userName" value="admin"/>
   </c:url>">
    这是通过连接生成的
</a>
<hr>
<br>
<c:import var="indexUrl" url="http://127.0.0.1:8080/meavnweb_war/index.jsp"/>
<c:out value="${indexUrl}"/>
<br>
<c:import url="http://127.0.0.1:8080/meavnweb_war/hello.jsp">
    <c:param name="userName" value="sun"></c:param>
</c:import>
</body>
</html>
