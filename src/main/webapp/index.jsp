<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <%@include file="/WEB-INF/views/shared/_header.jsp"%>
    <title>JSP - Hello World</title>
</head>
<body>
    <h1><%= "Hello World!" %>
    </h1>
    <br/>
    <a href="hello-servlet">Hello Servlet</a>
    <br>
    <a href="auth/login.do">login</a>
    <br>
    <a href="dashboard">dashboard</a>
    <jsp:include page="/WEB-INF/views/shared/_handleAlerts.jsp"/>

</html>