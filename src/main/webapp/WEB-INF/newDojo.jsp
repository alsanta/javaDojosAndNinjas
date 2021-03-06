<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="/css/style.css"/>
<title>Dojos & Ninjas (but in Java)</title>
</head>
<body>
    <div class="main mt-3 p-3 d-flex justify-content-between">
        <div class="leftMain d-flex flex-column">
            <h1>New Dojo</h1>
            <form:form action='/newDojo' method='POST' modelAttribute='dojo'>
            <div class="info mb-3 d-flex flex-column">
                <form:label path='name'>Name:</form:label>
                <form:errors class="text-danger" path='name'/>
                <form:input path='name'/>
            </div>
            <input class="subBtn" type="submit" value="Create">
            </form:form>
        </div>
        <div class="rightMain">
            <a href="/">Home</a>
        </div>
    </div>
</body>
</html>