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

<a href="#" class="scrollToTop"><i class="fas fa-angle-up"></i></a>

<!-- Header Section Stars Here -->
<header>
    <div class="header-top d-none d-xl-block">
        <div class="container">
            <div class="header-wrapper">
                <div class="logo"><a href=""><img src="<c:url value="/static/images/logo/logo.jpg"/>" alt="logo"></a>
                </div>
                <div class="header-info">
                    <div class="info-item">
                        <div class="info-thumb"><i class="flaticon-placeholder"></i></div>
                        <div class="info-content">
                            <h6 class="title">Адреса</h6><span>Мій спортклуб</span>
                        </div>
                    </div>
                    <div class="info-item">
                        <div class="info-thumb"><i class="flaticon-email"></i></div>
                        <div class="info-content"><h6 class="title">E-Mail</h6>
                            <span>info@mygym.com</span></div>
                    </div>
                    <div class="info-item">
                        <div class="info-thumb"><i class="flaticon-call"></i></div>
                        <div class="info-content"><h6 class="title">Телефон</h6><span>000 000 000</span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-bottom">
        <div class="container">
            <div class="header-bottom-wrapper">
                <div class="logo d-xl-none">
                    <a href=""><img src="<c:url value="/static/images/logo/logo-tt.PNG"/>" alt="logo"></a>
                </div>
                <div class="header-bar d-xl-none"><span></span><span></span><span></span></div>
                <ul class="menu">
                    <li class="menu-item"><a href="<c:out value="/home"/>" class="menu-item-link">Дім</a></li>
                    <li class="menu-item"><a href="#" class="menu-item-link">Пропозиції</a>
                        <ul class="sub-menu">
                            <li class="menu-item"><a href="<c:out value="/gym/plans"/>" class="menu-item-link">Плани тренувань</a></li>
                        </ul>
                    </li>

                    <li class="menu-item"><a href="" class="menu-item-link">Заняття</a>
                        <ul class="sub-menu">
                            <li class="menu-item"><a href="<c:out value="/gym/schedule"/>" class="menu-item-link">Розклад</a></li>
                        </ul>
                    </li>
                    <li class="menu-item"><a href="<c:out value="/trainers"/>" class="menu-item-link">Тренери</a>
                    </li>
                    <li class="menu-item"><a href="" class="menu-item-link">Тренування</a>
                        <ul class="sub-menu">
                            <li class="menu-item"><a href="<c:out value="/gym/workout/create"/>" class="menu-item-link">Створити власний план</a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-item"><a href="<c:out value="/gym/dashboard"/>" class="menu-item-link">Аккаунт</a>
                        <ul class="sub-menu">
                            <li class="menu-item"><a href="<c:out value="/gym/login"/>" class="menu-item-link">Вхід</a></li>
                            <li class="menu-item"><a href="<c:out value="/gym/register"/>" class="menu-item-link">Реєстрація</a></li>
                        </ul>
                    </li>
                    <li class="menu-item"><a href="<c:out value="/gym/login"/>" class="header-button">ВПЕРЕД</a></li>
                </ul>
                <div class="header-button-wrapper d-none d-xl-inline-flex"><a class="header-button" href="<c:out value="/gym/login"/>">ВПЕРЕД</a></div>
            </div>
        </div>
    </div>
</header><!-- Header Section Ends Here -->
<!-- Page Header Starts Here -->

