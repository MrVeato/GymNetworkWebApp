<%--
  Created by IntelliJ IDEA.
  User: Yaros
  Date: 05.05.2023
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="./header.jsp" %>
<html>
<head>
    <title>Trainers</title>
</head>
<body>

<section class="page-header bg_img" data-background="/static/images/banner/05.jpg">
    <div class="container">
        <h3 class="title">
            <span class="shape-wrapper">
                <span class="shape"></span>Наші тренери<span class="shape"></span></span>
        </h3>
    </div>
</section>

<div class="breadcrumb-section">
    <div class="container">
        <div class="breadcrumb-wrapper">
            <div class="breadcrumb-title"><h6 class="title">тренери</h6></div>
            <ul class="breadcrumb">
                <li><a href="<c:url value="./home"/>">Дім</a></li>
                <li><a href="/trainers">Тренери</a></li>
                <li>Катерина Глушко</li>
            </ul>
        </div>
    </div>
</div>

<div class="container">
    <div class="trainer-view">
        <div class="row">
            <div class="col-lg-6 traning-info">
                <h1 class="trainer-name">
                    Катерина Глушко           </h1>
                <div class="trainer-description">
                    Сертифікований тренер BARRE з міжнародними ліцензіями International Ballet Barre Fitness Association (США) Level 1, Level 2, Level 3, Special Populations, Pre/Postnatal Barre. Учасниця семінарів та майстер-класів Barre Intensity, Les Mills Barre (Італія).

                    Дуже серйозна тренерка, яка навчить тебе граційно рухатися і сідати у найкращі пліє у твоєму житті!
                </div>
            </div>
            <div class="col-lg-6 trainer-image top-trainer">
                <img class="img-responsive" src="/static/images/trainers/trainer4.jpg" alt="">        </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <a class="btn btn-block btn-warning main-training-btn" href="/gym/schedule" onclick="dataLayer.push({'event': 'smartass', 'eventCategory': 'userclicks', 'eventAction': 'button', 'eventLabel': 'applic'});">
                    Записатись                </a>
            </div>
        </div>
    </div>    </div>
</body>
<%@ include file="./footer.jsp" %>
</html>
