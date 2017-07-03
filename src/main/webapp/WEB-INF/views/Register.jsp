<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/flexboxgrid.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/font-awesome.css" />" rel="stylesheet">
    <title>Book Store | Registration</title>
</head>
<body>
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
                        <li><a href="Home">Домой</a></li>
                        <li><a href="Store">Магазин</a></li>
                        <li><a href="About">О нас</a></li>
                        <%
                            String name = (String) session.getAttribute("name");
                            String login = (String) session.getAttribute("login");
                            String button;
                            String exit;
                            if (login==null){
                                button = "<li class=\"current\"><a href=\"Login\">Вход</a></li>";
                                out.print(button);
                            }else {
                                if (name==null || name.equals("")) {
                                    button = "<li class=\"greetings\"><a>Привет <span class=\"primary-text\">" + login + "</span></a></li>";
                                    exit ="<li class=\"current\"><a href=\"Logout\">Выход</a></li>";
                                    out.print(exit);
                                    out.print(button);
                                }else {
                                    button = "<li class=\"greetings\"><a>Привет <span class=\"primary-text\">" + name + "</span></a></li>";
                                    exit ="<li class=\"current\"><a href=\"Logout\">Выход</a></li>";
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

<!--Main Page-->
<section id="page" class="login">
    <div class="container">
        <div class="row center-xs center-sm center-md center-lg">
            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 login">
                <h2><span class="primary-text">Новый</span> пользователь</h2>
                <form name="regForm" action="/BookStore/newUser" method="post">
                    <div>
                        <input type="text" name="login" placeholder="Логин*" autocomplete="new-password">
                    </div>
                    <div>
                        <input type="password" name="password" placeholder="Пароль*" autocomplete="new-password">
                    </div>
                    <div>
                        <input type="password" name="rpassword" placeholder="Пароль еще раз*" autocomplete="new-password">
                    </div>
                    <div>
                        <input type="text" name="name" placeholder="Имя">
                    </div>
                    <div>
                        <input type="text" name="secname" placeholder="Фамилия">
                    </div>
                    <div>
                        <input type="text" name="email" placeholder="Email" >
                    </div>
                    <script type="text/javascript" src="/BookStore/resources/js/validate.js"></script>
                    <button type="submit" name="action" onclick="return validate()" value="Register">Регистрация</button>
                    <button name="action" value="Cancel ">Отмена</button><br>

                    <%
                        String error = (String) request.getAttribute("error");
                        String msg = (String) request.getAttribute("msg");
                        if (error==null){
                            error = "";
                        }
                        if (msg==null){
                            msg = "";
                        }

                    %>
                    <h4 id="message"><%=msg%></h4>
                </form>

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
