<%--
  Created by IntelliJ IDEA.
  User: Muhammad
  Date: 9/10/2022
  Time: 11:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="Css.jsp"></jsp:include>
    <title>Authors</title>
</head>
<body>
<div class="container text-center">

    <h1>Authors</h1>

    <a class="btn btn-outline-primary my-4" href="/authors/get-form">Add author</a>
    <div class="row">
        <div class="col-md-6 offset-3">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Full Name</th>
                    <th scope="col">Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${authors}" var="author" varStatus="loop">
                    <tr>
                        <th scope="row">${loop.index+1}</th>
                        <td>
                            <a href="/authors/${author.authorId}">${author.authorFullName}</a>
                        </td>
                        <td>
                            <a class="btn btn-warning" href="/authors/edit?id=${author.authorId}">Edit</a>
                            <a class="btn btn-danger" href="/authors/delete/${author.authorId}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </div>
</div>
</body>
</html>
