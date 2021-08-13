<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="ISO-8859-1">
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
                    crossorigin="anonymous">
                <link rel="stylesheet" href="/css/style.css" />
                <title>Insert title here</title>
            </head>

            <body>
                <div class="main  mt-3 p-3">
                    <div class="navBar d-flex justify-content-end mb-3">
                        <a href="/">Home</a>
                    </div>
                    <header class="fs-1 text-center mb-3">Dojos</header>
                    <table class="table table-striped border">
                        <thead>
                            <tr>
                                <th scope="col">Dojos</th>
                                <th scope="col">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var='singleDojo' items='${allDojos}'>
                            <tr>
                                <td>${singleDojo.name}</td>
                                <td><a href="/dojos/${singleDojo.id}">View</a></td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </body>
            </html>