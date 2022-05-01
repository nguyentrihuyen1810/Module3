<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Product List</h1>
<table border="1">
    <tr>
        <th>STT</th>
        <th>Id</th>
        <th>Name</th>
        <th>Brand</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Date Release</th>
    </tr>
    <tr>
        <c:forEach items="${list}" var="product" varStatus="item">
    <tr>
        <th>${item.index}</th>
        <th>${product.id}</th>
        <th>${product.name}</th>
        <th>${product.brand}</th>
        <th>${product.price}</th>
        <th>${product.quantity}</th>
        <th>
            <fmt:formatDate value="${product.dateRelease}" pattern="dd/MM/yyyy"></fmt:formatDate>
        </th>
    </tr>
    </c:forEach>
    </tr>
</table>
</body>
</html>
