<%--<!DOCTYPE HTML>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Tạo trang Web để đăng nhập và hiển thị lời chào</title>--%>
<%--</head>--%>
<%--<style type = "text/css">--%>
<%--    .login {--%>
<%--        height: 180px;--%>
<%--        width: 230px;--%>
<%--        margin: 0;--%>
<%--        padding: 10px;--%>
<%--        border: 1px #CCC solid;--%>
<%--    }--%>

<%--    .login input {--%>
<%--        padding: 5px;--%>
<%--        margin: 5px;--%>
<%--    }--%>
<%--</style>--%>
<%--<body>--%>
<%--<form method = "post" action = "/login">--%>
<%--    <div class = "login">--%>
<%--        <h2>Login</h2>--%>
<%--        <input type = "text" name = "username" size = "30" placeholder="username"/>--%>
<%--        <input type = "password" name = "password" size = "30" placeholder="password"/>--%>
<%--        <input type = "submit" value = "Sign in"/>--%>
<%--    </div>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>

<%--Bài thực hành 2--%>

<%--<!DOCTYPE HTML>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Ung dung chuyen doi tien te - Servlet</title>--%>
<%--    <link rel="stylesheet" type = "text/css" href="css/style.css">--%>
<%--</head>--%>
<%--<body>--%>
<%--<form method = "post" action = "/convert">--%>
<%--    <label>Rate: </label><br/>--%>
<%--    <input type = "text" name = "rate" placeholder="RATE" value="22000"/><br/>--%>
<%--    <label>USD: </label><br/>--%>
<%--    <input type = "text" name = "usd" placeholder="USD" value = "0"/><br/>--%>
<%--    <input type = "submit" id = "submit" value = "Converter"/>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>

<%--bài thực hành 3--%>

<%--<!DOCTYPE HTML>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Ung dung Tu dien don gian - Servlet</title>--%>
<%--    <link rel="stylesheet" type = "text/css" href="css/style.css">--%>
<%--</head>--%>
<%--<body>--%>
<%--<h2>Vietnamese Dictionary</h2>--%>
<%--<form method = "post" action = "/translate">--%>
<%--    <input type = "text" name = "txtSearh" placeholder="Enter your word: "/>--%>
<%--    <input type = "submit" id = "submit" value = "Search"/>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>

<%--ứng dụng Product Discount--%>

<!DOCTYPE HTML>
<html>
<head>
    <title>Ung dung Product Discount</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<form method="post" action="/product">
    <h1>Product Discount</h1>
    <div>
        <label>Product Description: </label>
        <input type="text" name="product">
    </div>
    <div>
        <label>List Price: </label>
        <input type="text" name="price">
    </div>
    <div>
        <label>Discount Percent: </label>
        <input type="text" name="percent">
    </div>
    <button>Calculate</button>
</form>
</body>
</html>