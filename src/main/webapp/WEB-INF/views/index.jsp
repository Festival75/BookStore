<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/flexboxgrid.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/font-awesome.css" />" rel="stylesheet">
    <title>Book Store</title>
</head>
<body>
<!-- Header -->
<header id="main-header">
    <div class="container">
        <div class="row end-sm end-md end-lg center-xs middle-xs middle-sm middle-md middle-lg">
            <div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
                <h1><span class="primary-text">Тезаус</span></h1>
            </div>
            <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10">
                <nav id="navbar">
                    <ul>
                        <li class="current"><a href="Home">HOME</a></li>
                        <li><a href="Store">STORE</a></li>
                        <li><a href="About">ABOUT</a></li>
                        <li><a href="Login">LOGIN</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>

<!--ShowCase-->
<section id="showcase">
    <div class="container">
        <div class="row center-xs center-sm center-md center-lg middle-xs middle-sm middle-md middle-lg">
            <div class="col-xs-10 col-sm-10 col-md-10 col-lg-7 showcase-content">
                <h1>Книжный магазин <span class="primary-text">Тезаус</span></h1>
                <p>Лучший подарок это книга</p>
            </div>
        </div>
    </div>
</section>

<!--Features-->
<section id="features">
    <div class="container">
        <div class="row center-xs center-sm center-md center-lg">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h2>Наши приемущества</h2>
                <p>Включают в себя:</p>
                <!--Icon Row One-->
                <div class="row center-xs center-sm center-md center-lg">
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                        <i class="fa fa-book"></i><br>
                        <h4>Огромный выбор</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                        <i class="fa fa-diamond"></i><br>
                        <h4>Превосходное качество</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                        <i class="fa fa-dollar"></i><br>
                        <h4>Разумная цена</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                    </div>
                </div>
                <!--Icon Row Two-->
                <div class="row center-xs center-sm center-md center-lg">
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                        <i class="fa fa-paper-plane"></i><br>
                        <h4>Доставка до дверей</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                        <i class="fa fa-percent"></i><br>
                        <h4>Система скидок</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                        <i class="fa fa-search"></i><br>
                        <h4>Книги под заказ</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--Info-->
<section id="info">
    <div class="container">
        <div class="row center-xs center-sm center-md center-lg middle-xs middle-sm middle-md middle-lg">
            <div class="col col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <img src="/BookStore/resources/img/book.png" alt="">
            </div>
            <div class="col col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <h2>Читая книги вы:</h2>
                <ul>
                    <li><i class="fa fa-check"></i> Становитесь еще умнее</li>
                    <li><i class="fa fa-check"></i> Можете поддержать беседу</li>
                    <li><i class="fa fa-check"></i> Увеличиваете словарный запас</li>
                    <li><i class="fa fa-check"></i> Расширяете кругозор</li>
                    <li><i class="fa fa-check"></i> Развиваете фантазию</li>
                    <li><i class="fa fa-check"></i> Познаёте мир</li>
                    <li><i class="fa fa-check"></i> Приятно проводите время</li>
                </ul>
            </div>
        </div>
    </div>
</section>

<!--Company-->
<section id="company">
    <div class="container">
        <div class="row middle-xs middle-sm middle-md middle-lg">
            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                <h4>Связаться с нами</h4>
                <ul>
                    <li><i class="fa fa-phone"></i> 8-800-555-35-35</li>
                    <li><i class="fa fa-envelope"></i> shop@tesarus.com</li>
                    <li><i class="fa fa-map"></i> 450060, г.Уфа, ул.Победы 15, оф.201</li>
                </ul>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                <h4>О Нас</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi dolorum eius eveniet explicabo facere
                    facilis impedit minima mollitia necessitatibus</p>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                <h4>Рассылка новостей</h4>
                <form>
                    <input type="text" name="email" placeholder="Email"><br>
                    <button type="submit" name="button">Подписаться</button>
                </form>
            </div>
        </div>
    </div>
</section>

<!--Footer-->
<footer id="main-footer">
    <div class="container">
        <div class="row center-xs center-sm center-md center-lg ">
            <div class="col col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <p>Copyright &copy; 2017 | Festival Media Group</p>
            </div>
        </div>
    </div>

</footer>
</body>
</html>
