<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Корзина</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand">Корзина</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="eshop?command=get-homePage">Главная</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Профиль</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<%--<div class="row">--%>


<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:forEach items="${cartProductsList}" var="product">
    <div class="card mb-3" style="max-width: 540px;margin:10px;">
        <div class="row g-0">
            <div class="col-md-4">
                <img src="${contextPath}/images/${product.getImageName()}" class="img-fluid rounded-start"
                     alt="Card image">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title">${product.getName()}</h5>
                    <p class="card-text">${product.getDescription()}</p>
                    <p class="card-text">Цена: <fmt:formatNumber value="${product.getPrice()}" type="currency"/></p>
                    <a href="eshop?command=delete-product-from-cart&productId=${product.getId()}"
                       class="btn btn-dark btn-lg">Удалить</a>
                </div>
            </div>
        </div>
    </div>
</c:forEach>
<a href="#" class="btn btn-dark btn-lg" style="margin: 10px">Оформить заказ</a>
<a href="eshop?command=delete-all-products-from-cart" class="btn btn-dark btn-lg" style="margin: 10px">Очистить
    корзину</a>
</body>
</html>
