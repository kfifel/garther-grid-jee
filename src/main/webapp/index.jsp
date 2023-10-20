<%@ page import="com.youcode.garthergridjee.service.EventService" %>
<%@ page import="com.youcode.garthergridjee.repository.EventRepository" %>
<%@ page import="com.youcode.garthergridjee.repository.implementation.EventRepositoryImp" %>
<%@ page import="com.youcode.garthergridjee.entities.Event" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
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
</body>
</html>