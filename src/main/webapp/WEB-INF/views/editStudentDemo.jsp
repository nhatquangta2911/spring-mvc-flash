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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit Student</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">
</head>
<body>
<br><br>
<div class="container columns is-mobile is-centered">
    <form:form method="post"  modelAttribute="student" cssClass="column is-6 box box-padding box-shadow">
        <p class="title is-2 has-text-primary">Edit User Page</p>
        <form:label path="name">Name: </form:label>
        <form:input cssClass="input" path="name"/>
        <br>
        <form:label path="name">Score: </form:label>
        <form:input cssClass="input" path="score"/>
        <br>
        <form:label path="major">Major: </form:label>
        <form:select cssClass="select" path="major" items="${majors}" itemLabel="name" itemValue="id">
            <%--<form:option value="WEB">Software Engineer</form:option>--%>
            <%--<form:option value="APP">Computer Science</form:option>--%>
        </form:select>
        <br>
        <form:label path="gender">Gender: </form:label>
        <form:radiobuttons cssClass="radio-button" path="gender" items="${genders}"/>
        <br>
        <form:label path="languages">Languages: </form:label>
        <form:checkboxes path="languages" items="${languages}"/>
        <br>
        <form:label path="hobbies">Hobbies: </form:label>
        <form:checkboxes cssClass="checkbox" path="hobbies" items="${hobbies}"/>
        <br>
        <br>
        <input class="button is-primary" type="submit" value="Edit student">
    </form:form>
</div>
</body>
</html>
