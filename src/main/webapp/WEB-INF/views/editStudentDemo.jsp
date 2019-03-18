<%--
  Created by IntelliJ IDEA.
  User: ryan-ta
  Date: 3/11/19
  Time: 8:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Edit Student</title>
</head>
<body>
<div class="container columns is-mobile is-centered">
    <form:form method="post" class="column is-6 box box-padding box-shadow" modelAttribute="student">
        <p class="title is-2 has-text-primary">Login Page</p>
        <form:label path="name">Name: </form:label>
        <form:input path="name"/>
        <br>
        <form:label path="name">Score: </form:label>
        <form:input path="score"/>
        <br>
        <form:label path="major">Major: </form:label>
        <form:select path="major" items="${majors}">
            <%--<form:option value="WEB">Software Engineer</form:option>--%>
            <%--<form:option value="APP">Computer Science</form:option>--%>
        </form:select>
        <br>
        <form:label path="gender">Gender: </form:label>
        <form:radiobuttons path="gender" items="${genders}"/>
        <br>
        <form:label path="languages">Languages: </form:label>
        <form:checkboxes path="languages" items="${languages}"/>
        <br>
        <form:label path="hobbies">Hobbies: </form:label>
        <form:checkboxes path="hobbies" items="${hobbies}"/>
        <br>
        <br>
        <input type="submit" value="Edit student">
    </form:form>
</div>
</body>
</html>
