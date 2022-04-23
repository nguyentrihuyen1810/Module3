<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
