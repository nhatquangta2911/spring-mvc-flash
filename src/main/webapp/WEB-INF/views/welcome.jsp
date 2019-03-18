<%--
  Created by IntelliJ IDEA.
  User: ryan-ta
  Date: 3/8/19
  Time: 7:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<section class="session">
    <div class="container">
        <br>
        <p class="label has-text-success">Login successfully!</p>
        <p class="title is-2">Hello ${email}</p>
        <br>
        <button class="button is-warning" onclick="redirect()">Edit Student Information</button>
    </div>
</section>
<script>
    function redirect() {
        window.location = "/edit";
    }
</script>
</body>
</html>

