<%--
  Created by IntelliJ IDEA.
  User: ryan-ta
  Date: 3/18/19
  Time: 5:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Student Info</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">
</head>
<body>
<section class="session">
    <div class="container">
        <br>
        <p>${student.name}</p>
        <p>${student.score}</p>
        <p>${student.major}</p>
        <p>${student.gender}</p>
        <p>${student.languages}</p>
        <p>${student.hobbies}</p>
        <br>
        <button onclick="redirect()" class="button is-primary">Back</button>
    </div>
</section>

<script>
    function redirect() {
        window.location = "/edit";
    }
</script>
</body>
</html>
