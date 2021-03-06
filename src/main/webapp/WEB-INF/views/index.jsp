<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/flexboxgrid.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/font-awesome.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/w3.css" />" rel="stylesheet">

    <title>Book Store</title>
</head>
<body>
<script type="text/javascript" src="/BookStore/resources/js/toTop.js"></script>
<button onclick="topFunction()" id="myBtn" title="Go to top">Наверх</button>
<!-- Header -->
<header id="main-header">
    <div class="container">
        <div class="row end-sm end-md end-lg center-xs middle-xs middle-sm middle-md middle-lg">
            <div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
                <h1><span class="primary-text">Тезаурус</span></h1>
            </div>
            <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10">
                <nav id="navbar">
                    <ul>
                        <li class="current"><a href="Home">Домой</a></li>
                        <li><a href="Store">Магазин</a></li>
                        <li><a href="About">О нас</a></li>
                        <%
                            String name = (String) session.getAttribute("name");
                            String login = (String) session.getAttribute("login");
                            String button;
                            String exit;
                            if (login==null){
                                button = "<li><a href=\"Login\">Вход</a></li>";
                                out.print(button);
                            }else {
                                if (name==null || name.equals("")) {
                                    button = "<li class=\"greetings\"><a>Привет <span class=\"primary-text\">" + login + "</span></a></li>";
                                    exit ="<li><a href=\"Logout\">Выход</a></li>";
                                    out.print(exit);
                                    out.print(button);
                                }else {
                                    button = "<li class=\"greetings\"><a>Привет <span class=\"primary-text\">" + name + "</span></a></li>";
                                    exit ="<li><a href=\"Logout\">Выход</a></li>";
                                    out.print(exit);
                                    out.print(button);
                                }
                            }
                        %>
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
                <h1>Книжный магазин <span class="primary-text">Тезаурус</span></h1>
                <p>Добро пожаловать в мир книг</p>
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

<!--SlideShow-->
<section id="slideshow">
    <div class="container">
        <div class="row center-xs center-sm center-md center-lg">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="w3-content w3-display-container">
                    <img class="mySlides" src="/BookStore/resources/img/slide3.jpg" style="width:100%">
                    <img class="mySlides" src="/BookStore/resources/img/slide2.jpg" style="width:100%">
                    <img class="mySlides" src="/BookStore/resources/img/slide1.jpg" style="width:100%">
                    <img class="mySlides" src="/BookStore/resources/img/slide4.jpg" style="width:100%">
                    <img class="mySlides" src="/BookStore/resources/img/slide5.jpg" style="width:100%">
                    <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle w3-border-black" style="width:100%">
                        <div class="w3-left w3-hover-text-khaki w3-border-black" onclick="plusDivs(-1)">&#10094;</div>
                        <div class="w3-right w3-hover-text-khaki w3-border-black" onclick="plusDivs(1)">&#10095;</div>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-border-black" onclick="currentDiv(1)"></span>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-border-black" onclick="currentDiv(2)"></span>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-border-black" onclick="currentDiv(3)"></span>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-border-black" onclick="currentDiv(4)"></span>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-border-black" onclick="currentDiv(5)"></span>
                    </div>
                </div>

                <script type="text/javascript" src="/BookStore/resources/js/slideshow.js"></script>
            </div>
        </div>
    </div>
</section>

<!--Company-->
<section id="company">
    <div class="container">
        <div class="row top-xs top-sm top-md top-lg center-xs center-sm center-md center-lg">
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
