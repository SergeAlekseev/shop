<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Данные пользователя</title>
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

    <h2>Данные пользователя</h2>
    <table>
        <tr>
            <td>Имя</td>
            <td>${buyer.name}</td>
        </tr>
        <tr>
        <tr>
            <td>Почта</td>
            <td>${buyer.email}</td>
        </tr>
        <tr>
            <td>Телефон</td>
            <td>${buyer.phone}</td>
        </tr>
        <tr>
            <td>Адрес</td>
            <td>${buyer.address}</td>
        </tr>
    </table>
    <a href="/addProfile">Назад</a>
</body>
</html>
