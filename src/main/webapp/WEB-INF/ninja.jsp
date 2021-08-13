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
<title>Insert title here</title>
</head>
<body>
    <div class="main mt-3 p-3 d-flex justify-content-between">
        <div class="leftMain d-flex flex-column">
            <h1>New Ninja</h1>
            <form:form action='/newNinja' method='POST' modelAttribute='ninja'>
            <div class="info mb-3 d-flex flex-column">
                <form:label path='dojo'>Dojo:</form:label>
                <form:select path='dojo'>
                    <c:forEach var='singleDojo' items='${ allDojos }'>
                        <form:option value='${singleDojo.id}' label='${singleDojo.name}'/>
                    </c:forEach>
                </form:select>
                <form:label path='first_name'>First Name:</form:label>
                <form:errors class="text-danger" path='first_name'/>
                <form:input path='first_name'/>
                <form:label path='last_name'>Last Name:</form:label>
                <form:errors class="text-danger" path='last_name'/>
                <form:input path='last_name'/>
                <form:label path='age'>Age:</form:label>
                <form:errors class="text-danger" path='age'/>
                <form:input path='age'/>
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