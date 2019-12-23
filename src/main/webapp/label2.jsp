<%@ page import="java.util.Collection" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: itoutsource.cz10
  Date: 2019/12/20
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    session.setAttribute("age", 12);

    Collection names = new ArrayList();
    names.add("小菜");
    names.add("大菜");
    names.add("老蔡");
    session.setAttribute("nameList", names);

    String str = "赵,钱,孙,李";
    session.setAttribute("tokenString", str);
%>
<head>
    <title>标签的使用</title>
</head>
<body>
<c:choose>
    <c:when test="${age<12}">
        年龄太小,反法无罪
    </c:when>
    <c:when test="${age<18&&age>12}">
        未成年,犯罪倒霉
    </c:when>
    <c:when test="${age>18}">
        你是别人的犯罪目标了
    </c:when>
    <c:otherwise>
        你不在无形之中
    </c:otherwise>
</c:choose>
<br>
<c:forEach var="names" items="${nameList}" varStatus="status">
    <c:out value="${names}"/>
    <c:out value="${status.index}"/>
    <c:out value="${status.count}"/>
    <c:if test="${status.first}">
        这是第一个
    </c:if>
    <c:if test="${status.last}">
        这是最后一个
    </c:if>
    <br>
</c:forEach>
<br>
<c:forTokens var="str" items="${tokenString}" delims="," varStatus="status">
    <c:out value="${str}"/>
    count=<c:out value="${status.count}"/>
    <br>
</c:forTokens>
</body>
</html>
