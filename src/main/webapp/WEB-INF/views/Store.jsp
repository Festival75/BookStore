<%@ page import="com.festival.book.model.Book" %>
<%@ page import="java.util.List" %>
<%@ page import="com.festival.book.dao.BookDAO" %>
<%@ page import="java.util.Iterator" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/flexboxgrid.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/font-awesome.css" />" rel="stylesheet">
    <title>Book Store | Store</title>
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
                        <li class="current"><a href="Store">Магазин</a></li>
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

<!--Subheader-->
<section id="subheader">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h1>Магазин</h1>
            </div>
        </div>
    </div>
</section>

<!--Main Page-->
<section id="page" class="about">
    <div class="container">
        <div class="row center-xs center-sm center-md center-lg">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 item">
                <ul>
                    <%
                        List<Book> bookList = (List<Book>) request.getAttribute("books");
                        int n = 0;
                    %>
                    <c:forEach items="<%=bookList%>" var = "book">
                        <%
                            String title = bookList.get(n).getTitle();
                            String author = bookList.get(n).getAuthor();
                            String genre_main = bookList.get(n).getGenre_main();
                            String genre_second = bookList.get(n).getGenre_second();
                            String image = bookList.get(n).getImage();
                            String description = bookList.get(n).getDescription();
                            int cost = bookList.get(n).getCost();
                            int quantity = bookList.get(n).getQuantity();
                            n+=1;
                        %>
                        <li>
                            <section id="bookCard">
                                <div class="container">
                                    <div class="row center-xs center-sm center-md center-lg">
                                        <div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
                                            <img id="book_image" src="<%=image%>">
                                        </div>
                                        <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10">
                                            <div class="row center-xs center-sm center-md center-lg">
                                                <div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
                                                    <h1><%=title%></h1>
                                                </div>
                                                <div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
                                                    <h1><%=author%></h1>
                                                </div>
                                                <div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">

                                                </div>
                                            </div>
                                            <div class="row center-xs center-sm center-md center-lg">
                                                <div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
                                                    <h2><%=genre_main%></h2>
                                                </div>
                                                <div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
                                                    <h2><%=genre_second%></h2>
                                                </div>
                                                <div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
                                                    <h3><%=cost%></h3>
                                                    <h3><%=quantity%></h3>
                                                </div>

                                            </div>
                                            <div class="row center-xs center-sm center-md center-lg">
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                    <p><%=description%></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </section>
                        </li>
                    </c:forEach>
                </ul>
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
