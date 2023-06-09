<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Мій спортклуб</title>
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Rajdhani:300,400,500,600,700&display=swap"/>" rel="stylesheet">
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600,600i,700,700i&display=swap"/>"
          rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="http://cdn.bootstrapmb.com/bootstrap/4.3.1/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/all.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/animate.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/lightcase.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/flaticon.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/swiper.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/style.css"/>">
</head>

<body>
<!-- Header -->
<%@ include file="./header.jsp" %>
<!-- /.header -->
<a href="#" class="scrollToTop"><i class="fas fa-angle-up"></i></a>

<!-- Page Header -->
<section class="page-header bg_img" data-background="/static/images/banner/05.jpg">
    <div class="container">
        <h3 class="title">
            <span class="shape-wrapper">
                <span class="shape"></span>РЕЄСТРАЦІЯ<span class="shape"></span></span>
        </h3>
    </div>
</section>

<!-- Breadcrumb Section -->
<div class="breadcrumb-section">
    <div class="container">
        <div class="breadcrumb-wrapper">
            <div class="breadcrumb-title"><h6 class="title">реєстрація</h6></div>
            <ul class="breadcrumb">
                <li><a href="<c:url value="/home"/>">Дім</a></li>
                <li>Реєстрація</li>
            </ul>
        </div>
    </div>
</div>

<%-- Registration form --%>
<section class="login-section registration-section padding-bottom padding-top bg_img" data-background="/static/images/home/gallery-2.jpg" no-repeat center center>"
    <div class="container">
        <div class="login-wrapper"><h3 class="title">Створити аккаунт</h3>

            <form:form action="/gym/register" method="post" modelAttribute="user" class="login-form registration-form">
                <div class="form-group">
                    <form:input path="email" type="text" id="email" placeholder="E-Mail"/>
                    <form:errors path="email" cssClass="error"/></div>
                <div class="form-group">
                    <form:input path="firstName" type="text" id="firstName" placeholder="Name"/>
                    <form:errors path="firstName" cssClass="error"/></div>
                <div class="form-group">
                    <form:input path="lastName" type="text" id="lastName" placeholder="Lastname"/>
                    <form:errors path="lastName" cssClass="error"/></div>
                <div class="form-group">
                    <form:input path="username" type="text" id="username" placeholder="Username"/>
                    <form:errors path="username" cssClass="error"/></div>
                <div class="form-group">
                    <form:password path="password" id="password" placeholder="Password"/>
                    <form:errors path="password" cssClass="error"/></div>
                <div class="form-group">
                    <input type="submit" value="Зареєструватися" class="m-0"/></div>
                <div class="form-group m-0">
                    <form:label path="subscribed" class="registration-checkbox d-flex">
                        <form:checkbox path="subscribed" id="subscribed" value="yes"/>
                        <span>Отримувати новини на пошту</span>
                    </form:label>
                </div>
            </form:form>

        </div>
    </div>
</section>

</body>
<!-- Footer Section Starts Here -->
<%@ include file="./footer.jsp" %>
<!-- /.footer -->

</html>