<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <a href="/goods">Товары</a>
    <a href="/orders">Заказы</a>
    <a href="/basket">Корзина</a>
    <c:if test="${empty buyer.name}">
        <a href="/addProfile">Профиль</a>
    </c:if>
    <c:if test="${!empty buyer.name}">
        <a href="/profile">Профиль</a>
    </c:if>

    <c:url value="/goods/addGoods" var="var"/>

    <form action="${var}" method="POST">
        <label for="name">Товар</label>
        <input type="text" name="name" id="name" required autocomplete="off">

        <label for="price">Цена</label>
        <input type="text" pattern="\d+(\.\d{2})?" name="price" id="price" required autocomplete="off">

        <input type="submit" value="Добавить товар">
    </form>
</body>
</html>
