<%--
  Created by IntelliJ IDEA.
  User: Muhammad
  Date: 9/10/2022
  Time: 3:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User</title>
  <jsp:include page="Css.jsp"></jsp:include>
</head>
<body>
<h1>Full Name: ${user.fullName}</h1><br>
<h1>Phone Number: ${user.phoneNumber}</h1><br>
<h1>IsAdmin: ${user.isAdmin}</h1>
</body>
</html>
