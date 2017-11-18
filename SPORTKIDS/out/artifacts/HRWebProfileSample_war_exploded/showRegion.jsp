<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrador
  Date: 18/10/2017
  Time: 09:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>About Region</title>
</head>
<body>
    <h1>About Region</h1>
    <p>Region Id: <c:out value="${region.id}"/> </p>
    <p>Region Name: <c:out value="${region.name}"/> </p>
    <p><a href="regions?action=index">Regions List</a> </p>
</body>
</html>
