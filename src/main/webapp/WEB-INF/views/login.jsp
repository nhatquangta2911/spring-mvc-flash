<%--
  Created by IntelliJ IDEA.
  User: ryan-ta
  Date: 3/11/19
  Time: 6:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<section class="session">
    <br><br><br><br>
    <div class="container columns is-mobile is-centered">
    <form class="column is-6 box box-padding box-shadow" action="/login" method="post">
        <br>
        <div class="field">
            <p class="title is-2 has-text-primary">Login Page</p>
            <p class="label has-text-danger">${error}</p>
            <p class="control has-icons-left has-icons-right">
                <input class="input" name="email" type="email" placeholder="Email">
                <span class="icon is-small is-left">
                     <i class="fas fa-envelope"></i>
                </span>
                <span class="icon is-small is-right">
                    <i class="fas fa-check"></i>
                </span>
            </p>
        </div>
        <div class="field">
            <p class="control has-icons-left">
                <input class="input" name="password" type="password" placeholder="Password">
                <span class="icon is-small is-left">
                    <i class="fas fa-lock"></i>
                </span>
            </p>
        </div>
        <div class="field">
            <p class="control">
                <button type="submit" class="button is-primary">
                    Login
                </button>
            </p>
        </div>
        <br>
    </form>
    </div>
</section>
</body>
</html>
