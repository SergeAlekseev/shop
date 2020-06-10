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

    <h2>Все товары</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Наименование</th>
            <th>Цена</th>
        </tr>
            <c:forEach var="goods" items="${goodsList}">
                <tr>
                    <td>${goods.id} </td>
                    <td>${goods.name}</td>
                    <td>${goods.price}</td>
                    <td><a href="/goods/addBasket/${goods.id}">Добавить в корзину</a></td>
                    <td><a href="/goods/delete/${goods.id}">Удалить товар</a></td>
                </tr>
            </c:forEach>
    </table>

    <h2>Add</h2>
    <c:url value="/goods/addGoods" var="add"/>
    <a href="${add}">Добавить новый товар</a>
</body>
</html>