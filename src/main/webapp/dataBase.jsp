<%--
  Created by IntelliJ IDEA.
  User: itoutsource.cz10
  Date: 2019/12/20
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh">
<head>
    <title>数据库连接</title>
</head>
<body>
第一个数据源:<br>
<sql:setDataSource var="qlp" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/qlp?useunicode=true&characterEncoding=utf8&serverTimezone=UTC"
                   user="root" password="L123456ns"/>

使用数据源:
<hr>
<br>

<sql:query var="selectAll" dataSource="${qlp}">
    select * from t_user
<%--    <sql:param value="A-00001"/>--%>
</sql:query>

<table border="1">
    <c:forEach var="row" items="${selectAll.rows}">
        <tr>
            <td>name:<c:out value="${row.user_name}"/></td>
            <td>userCode:<c:out value="${row.user_code}"/></td>
            <td>password:<c:out value="${row.password}"/></td>
        </tr>
    </c:forEach>
</table>

<sql:query var="selectByCode" sql="select * from t_user where user_code=? and enable=1"
           dataSource="${qlp}">
    <sql:param value="A-00001"/>
</sql:query>
<c:forEach items="${selectByCode.rows}" var="row">
    Hi,<c:out value="${row.user_name}"/>
</c:forEach>
<br>
update 代表了增删改 sql:update
<br>
<%--<sql:update var="inserUser" dataSource="${sql}"--%>
<%--     sql="insert t_user (user_name,user_code,enable) values(?,?,?) ">--%>
<%--    <sql:param value=""/>--%>
<%--    <sql:param value=""/>--%>
<%--    <sql:param value=""/>--%>
<%--</sql:update>--%>
事务处理：sql:transaction
<br>
<%--<sql:transaction dataSource="">--%>
<%--    <sql:update var="delete" sql="">--%>

<%--    </sql:update>--%>
<%--</sql:transaction>--%>

</body>
</html>
