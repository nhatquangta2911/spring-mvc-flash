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
    <form:form action="/edit" method="post" modelAttribute="student">
        <form:label path="name">Name: ${student.name} </form:label>
        <form:input path="name"/>
        <br>
        <form:label path="name">Score: ${student.score}</form:label>
        <form:input path="score"/>
        <br>
        <form:label path="major">Major: </form:label>
        <form:select path="major" items="${student.major}" itemLabel="name" itemValue="id"/>
        <br>
        <form:label path="gender">Gender: </form:label>
        <form:radiobuttons path="gender" items="${student.gender}"/>
        <br>
        <form:label path="languages">Languages: </form:label>
        <form:checkboxes path="languages" items="${student.languages}"/>
        <br>
        <form:label path="hobbies">Hobbies: </form:label>
        <form:select path="hobbies" multiple="true" items="${student.hobbies}"/>
        <br>
        <input type="submit" value="Edit student">
    </form:form>
</body>
</html>
