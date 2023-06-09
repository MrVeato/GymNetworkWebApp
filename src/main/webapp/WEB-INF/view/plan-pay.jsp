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
    <link rel="stylesheet" href="<c:url value="/static/css/main.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/services.css"/>">
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
                <span class="shape"></span>купити план тренувань<span class="shape"></span></span>
        </h3>
    </div>
</section>

<!-- Breadcrumb Section -->
<div class="breadcrumb-section">
    <div class="container">
        <div class="breadcrumb-wrapper">
            <div class="breadcrumb-title"><h6 class="title">Онлайн оплата</h6></div>
            <ul class="breadcrumb">
                <li><a href="<c:url value="/home"/>">Дім</a></li>
                <li><a href="<c:url value="/gym/plans"/>">Пропозиції</a></li>
                <li> Оплата</li>
            </ul>
        </div>
    </div>
</div>
<!-- Pay Form -->
<section class="pad95-100-top-bottom checkout_01">
    <form:form action="/gym/plans/order/${planOrder.id}" method="post" modelAttribute="planOrder">
        <div class="container">
            <div><h3 class="check-heading">Форма оплати</h3></div>
            <div class="row">
                <div class="col-lg-7 col-md-7 col-sm-6 col-xs-12 billing-left"><h4 class="billing">Персональні дані</h4>
                    <div class="checkout-form">
                        <div class="wdt-100">
                            <div class="wdt-100">
                                <p hidden><form:input path="id"/></p>
                                <p hidden><form:input path="ordered"/></p>
                                <div class="form-field field-49 "><label>Ім'я *</label>
                                    <input name="name" type="text" class="form-input" required></div>
                                <div class="form-field field-49 field-fr"><label>Прізвище *</label>
                                    <input name="surname" type="text" class="form-input" required></div>
                                <div class="form-field"><label>Адреса *</label>
                                    <input name="address" type="text" class="form-input input-marginbtm" required></div>
                                <div class="form-field field-49"><label>Місто *</label>
                                    <input name="city" type="text" class="form-input" required></div>
                                <div class="form-field field-49 field-fr"><label>Поштовий індекс *</label>
                                    <input name="postalCode" type="text" class="form-input"
                                           placeholder="__-___" pattern="^[0-9]{2}-[0-9]{3}$" required></div>
                                <div class="form-field"><label>E-Mail *</label>
                                    <input name="email" type="text" class="form-input"
                                            required></div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--========= Order details ============-->
                <div class="col-lg-5 col-md-5 col-sm-6 col-xs-12 order-rght"><h4 class="your">Ваше замовлення</h4>
                    <div class="product-orderlst">
                        <ul>
                            <li><span class="left-txt">План тренувань:</span>
                                <span class="rght-txt">&nbsp &nbsp ${plan.price}0 ₴.</span></li>
                            <li><span class="left-txt">План харчування</span>
                                <span class="rght-txt">&nbsp &nbsp ${planOrder.nutritionPrice}0 ₴.</span></li>
                            <li><span class="left-txt-sum"><strong>Разом</strong></span>
                                <span class="rght-txt-sum"><strong>&nbsp &nbsp ${plan.price + planOrder.nutritionPrice}0 ₴.</strong></span></li>
                        </ul>
                    </div>
                    <div class="checkout-form">
                        <div class="form-field"><label class="checkbox_label">
                            <div class="form-field paypal-margin main-h">
                                <label class="checkbox_label">
                                    <input type="radio" name="hosting" checked value="yes">PayPal</label>
                                <span class="paypal-img">
                                    <img src="${pageContext.request.contextPath}/static/images/feature/paypal-img.png" alt=""></span>
                            </div>
                            <div class="botton-secound" >
                                <input type="submit" value="Сплатити">
                                <div class="col-lg-8"><p></p></div>
                            </div>
                        </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form:form>
</section>

</body>

<!-- Footer -->
<%@ include file="./footer.jsp" %>
<!-- /.footer -->

</html>