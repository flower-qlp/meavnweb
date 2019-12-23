<%--
  Created by IntelliJ IDEA.
  User: itoutsource.cz10
  Date: 2019/12/18
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>标签</title>
</head>
<body>
--------------------c:set------------------------------<br>
<c:set var="userName" value="孙龙岗"/>
<c:out value="${userName}"/>
<br>
<hr>
set value in body
<c:set var="passWord">
    123456
</c:set>
<c:out value="${passWord}"/>
<br>
--------------------c:remove----------------------------------<br>
<c:set value="10000" var="maxUser" scope="application"/>
<c:set value="20" var="maxTime" scope="session"/>
<c:set value="hill" var="account" scope="request"/>
<c:set value="next.jsp" var="nextPage" scope="page"/>
<c:out value="${maxUser}"/><br>
<c:out value="${maxTime}"/><br>
<c:out value="${account}"/><br>
<c:out value="${nextPage}"/><br>
<c:remove var="maxUser" scope="application"/>
<c:remove var="maxTime" scope="session"/>

<c:out value="${maxUser}"/><br>
<c:out value="${maxTime}"/><br>
<c:out value="${account}"/><br>
<c:out value="${nextPage}"/><br>

--------------c:catch------------------<br>
<c:catch var="myCatch">
    <%
     int i=0;
     int result=10/i;
     out.println(result);
    %>
</c:catch>
Exception:
<c:out value="${myCatch}"/>
<hr><br>
Message:
<c:out value="${myCatch.message}"/>
<hr><br>
Cause:
<c:out value="${myCatch.cause}"/>
<br>
<c:if test="${10>1}" var="isTrue">
    这是一个很有哲学的问题
</c:if>
<c:out value="${isTrue}"/>
<br>
<hr>
</body>
</html>
