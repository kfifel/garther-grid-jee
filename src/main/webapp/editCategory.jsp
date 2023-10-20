<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modifier la catégorie d'événement</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">
    <h2>Modifier la catégorie d'événement</h2>
    <form action="catégorie" method="POST">
        <input type="hidden" name="_method" value="PUT"></input>
        <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
        <div class="form-group">
            <label for="name">Nom:</label>
            <input type="text" class="form-control" id="name" name="name" value="<%= request.getParameter("name") %>">
        </div>
        <div class="form-group">
            <label for="description">Description:</label>
            <input type="text" class="form-control" id="description" name="description" value="<%= request.getParameter("description") %>">
        </div>
        <div class="form-group">
            <label for="createdAt">Date de création:</label>
            <input type="text" class="form-control" id="createdAt" name="createdAt" value="<%= request.getParameter("createdAt") %>">
        </div>
        <button type="submit" class="btn btn-primary">Modifier</button>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
