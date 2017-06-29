<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/flexboxgrid.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/font-awesome.css" />" rel="stylesheet">
    <title>Book Store | About</title>
</head>
<body>
<!-- Header -->
<header id="main-header">
    <div class="container">
        <div class="row end-sm end-md end-lg  center-xs middle-xs middle-sm middle-md middle-lg">
            <div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
                <h1><span class="primary-text">Тезаус</span></h1>
            </div>
            <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10">
                <nav id="navbar">
                    <ul>
                        <li><a href="Home">Домой</a></li>
                        <li><a href="Store">Магазин</a></li>
                        <li class="current"><a href="About">О нас</a></li>
                        <%
                            String name = (String) session.getAttribute("login");
                            String button;
                            String exit;
                            if (name==null){
                                button = "<li><a href=\"Login\">Вход</a></li>";
                                out.print(button);
                            }else{
                                button = "<li class=\"greetings\"><a>Привет "+name+"</a></li>";
                                exit ="<li><a href=\"Logout\">Выход</a></li>";
                                out.print(exit);
                                out.print(button);
                            }
                        %>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>

<!--Subheader-->
<section id="subheader">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h1>О нас</h1>
            </div>
        </div>
    </div>
</section>

<!--Main Page-->
<section id="page" class="about">
    <div class="container">
        <div class="row center-xs center-sm center-md center-lg">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h2><span class="primary-text">Кто</span> мы такие</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque consequatur corporis culpa cumque deleniti distinctio ducimus illo laborum molestiae nemo nulla officiis, quaerat reiciendis ut voluptatum! Ad aut dolores suscipit.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque consequatur corporis culpa cumque deleniti distinctio ducimus illo laborum molestiae nemo nulla officiis, quaerat reiciendis ut voluptatum! Ad aut dolores suscipit.</p>
                <hr>
                <h2><span class="primary-text">Чего</span> мы добиваемся</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque consequatur corporis culpa cumque deleniti distinctio ducimus illo laborum molestiae nemo nulla officiis, quaerat reiciendis ut voluptatum! Ad aut dolores suscipit.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque consequatur corporis culpa cumque deleniti distinctio ducimus illo laborum molestiae nemo nulla officiis, quaerat reiciendis ut voluptatum! Ad aut dolores suscipit.</p>

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
