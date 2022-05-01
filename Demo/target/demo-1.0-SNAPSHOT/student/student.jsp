<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>List Student</title>
</head>
<body>
<h1>Student List</h1>
<table border="1">
    <tr>
        <th>STT</th>
        <th>ID</th>
        <th>Name</th>
        <th>Birthday</th>
        <th>Sex</th>
    </tr>
    <tr>
        <c:forEach items="${list}" var="student" varStatus="item">
    <tr>
        <th>${item.index}</th>
        <th>${student.id}</th>
        <th>${student.name}</th>
        <th>
            <fmt:formatDate value="${student.birthDay}" pattern="yyyy/MM/dd"></fmt:formatDate>
        </th>
        <th>
            <c:choose>
                <c:when test="${student.sex}">Male</c:when>
                <c:otherwise>Female</c:otherwise>
            </c:choose>
        </th>
    </tr>
    </c:forEach>
    </tr>
</table>
</body>
</html>
