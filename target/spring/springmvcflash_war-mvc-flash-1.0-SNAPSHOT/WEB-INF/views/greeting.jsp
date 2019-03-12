<%--
  Created by IntelliJ IDEA.
  User: ryan-ta
  Date: 3/4/19
  Time: 8:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Greeting</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
    <section class="session">
        <div class="container">
            <p class="subtitle">Username: <span class="subtitle is-primary">${username}</span></p>
            <p class="subtitle">Password: <span class="subtitle is-primary">${password}</span></p>
        </div>
    </section>
</body>
</html>
