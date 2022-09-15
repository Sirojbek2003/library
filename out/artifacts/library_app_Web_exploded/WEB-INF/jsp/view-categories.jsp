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
    <title>Categories</title>
</head>
<body>
<div class="container">

    <h1 class="text-center">Categories</h1>


    <div class="row">
        <a class="btn btn-outline-primary my-4" href="/categories/get-form">Add Category</a>
        <div class="col-md-6 offset-3">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${categories}" var="category" varStatus="loop">
                    <tr>
                        <th scope="row">${loop.index+1}</th>
                        <td>
                            <a href="/categories/${category.id}">${category.name}</a>
                        </td>
                        <td>
                            <a class="btn btn-ouline-warning" href="/categories/edit?id=${category.id}">EDIT</a>
                            <a class="btn btn-ouline-danger" href="/categories/delete/${category.id}">DELETE</a>
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