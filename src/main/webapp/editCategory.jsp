<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modifier la catégorie d'événement</title>
</head>
<body>
<h2>Modifier la catégorie d'événement</h2>
<form action="catégorie" method="POST">
    <input type="hidden" name="_method" value="PUT"><jsp:text /></input>
    <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
    Nom: <input type="text" name="name" value="<%= request.getParameter("name") %>"><br>
    Description: <input type="text" name="description" value="<%= request.getParameter("description") %>"><br>
    Date de création: <input type="text" name="createdAt" value="<%= request.getParameter("createdAt") %>"><br>

    <input type="submit" value="Modifier">
</form>
</body>
</html>



