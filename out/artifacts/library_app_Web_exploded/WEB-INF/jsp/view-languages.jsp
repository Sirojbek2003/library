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
    <title>Languages</title>
</head>
<body>
<div class="container text-center">

    <h1 class="text-center">Languages</h1>

    <a class="btn btn-outline-primary my-4" href="/languages/get-form">Add author</a>
    <div class="row">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${languages}" var="lang" varStatus="loop">
                    <tr>
                        <th scope="row">${loop.index}</th>
                        <td>
                            ${lang.name}
                        </td>
                        <td>
                            <a class="btn btn-outline-warning" href="/languages/edit?id=${lang.id}">Edit</a>
                            <a class="btn btn-outline-danger" href="/languages/delete/${lang.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
</div>

</body>
</html>
