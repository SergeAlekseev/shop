<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Данные пользователя</title>
</head>
<body>
    <a href="/goods">Товары</a>
    <a href="/orders">Заказы</a>
    <a href="/basket">Корзина</a>
    <a href="/addProfile">Профиль</a>

    <c:url value="/addProfile" var="var"/>

    <form action="${var}" method="POST">
        <table>
            <tr>
               <td><label for="name">Имя</label>
                   <input type="text" pattern="^[a-zA-Z]+$" name="name" id="name" required autocomplete="off"></td>
            </tr>
            <tr>
                <td><label for="email">Почта</label>
                    <input type="email" name="email" id="email" required autocomplete="off"></td>
            </tr>
            <tr>
                <td><label for="phone">Телефон</label>
                    <input type="text" pattern="8-[0-9]{3}-[0-9]{3}-[0-9]{2}-[0-9]{2}" placeholder="8-xxx-xxx-xx-xx" name="phone" id="phone" required autocomplete="off"></td>
            </tr>
            <tr>
                <td><label for="address">Адрес</label>
                    <input type="text" name="address" id="address" required autocomplete="off"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Сохранить"/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
