<%--
  Created by IntelliJ IDEA.
  User: itoutsource.cz10
  Date: 2019/12/18
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>标签库的使用c:out</title>
</head>
<body>
<h4>tag test</h4>
<%
    Collection collection = new ArrayList();
    collection.add("guest1");
    collection.add("guest2");
    collection.add("guest3");
    collection.add("guest4");
    request.setAttribute("customers", collection);
%>
<%
    session.setAttribute("session_test", "session_test");
    request.setAttribute("request_test", "request_test");
    application.setAttribute("application_test", "application_test");

    application.setAttribute("all_test", "application_all");
    session.setAttribute("all_test", "session_all");
    request.setAttribute("all_test", "request_all");

%>
I am <c:out value="${param.userName}"/>
<c:if test="${param.userName}=='admin'">
    you are admin!
</c:if>
<br>
<h4>customerList</h4>
<c:set var="customer" scope="session" value="${requestScope.customers}"/>
<c:forEach var="cust" items="${customer}">
    <c:out value="${cust}"></c:out><br>
</c:forEach>
-------------------------------c:out--------------------------------<br>
<h4>输出一个字符</h4>
<c:out value="test"/>
<br>
<hr>
带有Body的out标签,body不会输出到客户端<br>
<%
    for (int i = 0; i < 5; i++) {
%>
<c:out value="test2">
    <%
        //无法输出到页面
        out.println("i=" + i);
        i++;
    %>
</c:out>
<%
    }
%>
<hr>
<br>
<c:out value="2<10" escapeXml="true">
</c:out>
<hr>
获取session中的值<br>
<c:out value="${session_test}"/>
<c:out value="${request_test}"/>
<c:out value="${application_test}"/>
<br><br>
<c:out value="${all_test}"/>
输出一个默认值值<br>
<c:out value="${nnn}" default="这个值不存在"/>
</body>
</html>
