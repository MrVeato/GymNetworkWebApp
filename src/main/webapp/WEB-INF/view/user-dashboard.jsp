<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Мій спортклуб</title>
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Rajdhani:300,400,500,600,700&display=swap"/>"
          rel="stylesheet">
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600,600i,700,700i&display=swap"/>"
          rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="http://cdn.bootstrapmb.com/bootstrap/4.3.1/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/all.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/animate.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/lightcase.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/flaticon.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/swiper.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/services.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/class-register.css"/>">
</head>
<body>
<!-- Header -->
<%@ include file="./header.jsp" %>
<!-- /.header -->
<a href="#" class="scrollToTop"><i class="fas fa-angle-up"></i></a>
<!-- Page Header-->
<section class="page-header bg_img" data-background="/static/images/banner/05.jpg">
    <div class="container">
        <h3 class="title">
            <span class="shape-wrapper">
                <span class="shape"></span>Мій аккаунт<span class="shape"></span></span>
        </h3>
    </div>
</section>

<!-- Breadcrumb Section -->
<div class="breadcrumb-section">
    <div class="container">
        <div class="breadcrumb-wrapper">
            <div class="breadcrumb-title"><h6 class="title">Панель користувача</h6></div>
            <ul class="breadcrumb">
                <li><a href="<c:url value="/home"/>">Дім</a></li>
                <li><a href="<c:url value="/gym/dashboard"/>">Мій аккаунт</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="padding-bottom padding-top bg_img" data-background="/static/images/banner/stripes.png">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div>
                    <div class="col-lg-10">
                        <div class="expert-single-content"><h3 class="title">Мій профіль</h3><br>

                            <div><h5>Оновити данні</h5><br>

                                <form:form action="/gym/dashboard/profile" method="post" modelAttribute="user" class="registration-form">
                                    <div class="form-group"><h6>E-Mail</h6>
                                        <form:input path="email" type="text" id="email" placeholder="${user.email}"/>
                                        <form:errors path="email" cssClass="error"/></div><br>
                                    <div class="form-group"><h6>Ім'я</h6>
                                        <form:input path="firstName" type="text" id="firstName" placeholder="${user.firstName}"/>
                                        <form:errors path="firstName" cssClass="error"/></div><br>
                                    <div class="form-group"><h6>Прізвище</h6>
                                        <form:input path="lastName" type="text" id="lastName" placeholder="${user.lastName}"/>
                                        <form:errors path="lastName" cssClass="error"/></div><br>
                                    <div class="form-group"><h6>Нікнейм</h6>
                                        <form:input path="username" type="text" id="username" placeholder="${user.username}"/>
                                        <form:errors path="username" cssClass="error"/></div><br>
                                    <div class="form-group"><h6>Пароль</h6>
                                        <form:password path="password" id="password" placeholder="${user.password}"/>
                                        <form:errors path="password" cssClass="error"/></div><br>
                                    <div class="col-lg-4">
                                        <input type="submit" value="Зберегти" class="m-0"/></div>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <aside class="sidebar">
                    <div class="widget widget-category widget-info"><h5 class="widget-title">Мої записи</h5>
                        <ul>
                            <c:forEach var="class" items="${classes}">
                                <c:forEach var="unit" items="${schedule}">
                                    <c:if test="${user.id==class.user.id && unit.id==class.schedule.id}">
                                        <li><a href="#">${unit.name}<span>${unit.day}, ${unit.hour}</span></a></li>
                                    </c:if>
                                </c:forEach>
                            </c:forEach><br>
                            <a href="<c:url value="/gym/schedule"/>"><b><i>ОБРАТИ ЗАНЯТТЯ</i></b></a>
                        </ul>
                    </div>
                    <div class="widget widget-category widget-info"><h5 class="widget-title">Плани тренувань</h5>
                        <ul>
                            <c:forEach var="planOrder" items="${planOrders}">
                                <c:forEach var="plan" items="${plans}">
                                    <c:forEach var="trainer" items="${trainers}">
                                    <c:if test="${user.id==planOrder.user.id && plan.id==planOrder.plan.id && trainer.id==planOrder.trainer.id}">
                                        <li><a href="">${plan.name}<span>Trainer:</br>${trainer.name}</span></a></li>
                                    </c:if>
                                    </c:forEach>
                                </c:forEach>
                            </c:forEach><br>
                            <a href="<c:url value="/gym/plans"/>"><b><i>ПРИДБАТИ ПЛАН ТРЕНУВАНЬ</i></b></a>
                        </ul>
                    </div>
                    <div class="widget widget-category widget-info"><h5 class="widget-title">Мої тренування</h5>
                        <ul>
                            <c:forEach var="workout" items="${workouts}">
                                <li><a href="<c:out value="/gym/workout/${workout.id}"/>">${workout.name}</a></li>
                            </c:forEach><br>
                            <a href="<c:url value="/gym/workout/create"/>"><b><i>СТВОРИТИ НОВИЙ ПЛАН ТРЕНУВАНЬ</i></b></a>
                        </ul>
                    </div>
                </aside>
            </div>
        </div>
    </div>
</div>

</body>
<!-- Footer Section -->
<%@ include file="./footer.jsp" %>
</html>
