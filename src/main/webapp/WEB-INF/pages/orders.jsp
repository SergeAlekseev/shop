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

    <h2>Все заказы</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Имя</th>
            <th>Почта</th>
            <th>Адрес</th>
            <th>Товары</th>
            <th>Количество</th>
            <th>Сумма</th>
            <th>Телефон</th>
        </tr>
        <c:forEach var="order" items="${orders}">
            <tr>
                <td>${order.id} </td>
                <td>${order.name}</td>
                <td>${order.email}</td>
                <td>${order.address}</td>
                <td>${order.goods}</td>
                <td>${order.quantity}</td>
                <td>${order.sum}</td>
                <td>${order.phone}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
