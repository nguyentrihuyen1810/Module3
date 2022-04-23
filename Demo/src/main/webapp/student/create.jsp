<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Student</title>
</head>
<body>
<form action = "/student" meethod = "post">
    <h1>Create new Student</h1>
    <table border="1">
        <tr>
            <td>ID</td>
            <td><input type = "text" name = "id"></td>
        </tr>
        <tr>
            <td>Name</td>
            <td><input type = "text" name = "name"></td>
        </tr>
        <tr>
            <td>Birthday</td>
            <td><input type = "text" name = "birthday"></td>
        </tr>
        <tr>
            <td>Sex</td>
            <td>
                <input type = "radio" name = "sex" value = "Nam">Nam
                <input type = "radio" name = "sex" value = "Nu">Nữ
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type = "submit" value = "Register">
            </td>
        </tr>
    </table>
    <input type = "hidden" name = "action" value = "create">

</form>
</body>
</html>
