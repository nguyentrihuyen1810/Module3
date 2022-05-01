<%--
  Created by IntelliJ IDEA.
  User: my pc
  Date: 4/25/2022
  Time: 7:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new product</title>
</head>
<body>
<h1>Create new product</h1>
<form action="/student" method="post">
    <table>
        <tr>
            <td>Id:</td>
            <td><input type="text" name="id"></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>Brand:</td>
            <td><input type="text" name="brand"></td>
        </tr>
        <tr>
            <td>Price:</td>
            <td><input type="text" name="price"></td>
        </tr>
        <tr>
            <td>Quantity:</td>
            <td><input type="text" name="quantity"></td>
        </tr>
        <tr>
            <td>Day release:</td>
            <td><input type="text" name="dayRelease"></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Submit">
            </td>
        </tr>
    </table>
    <input type="hidden" name="action" value="create">
</form>
</body>
</html>
