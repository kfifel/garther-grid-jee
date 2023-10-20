<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 15/10/2023
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Formulaire d'enregistrement de catégorie d'événement</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container">
    <h2>Formulaire d'enregistrement de catégorie d'événement</h2>
    <% if (request.getAttribute("confirmationMessage") != null) { %>
    <div id="confirmationMessage" class="alert alert-success" role="alert">
        <%= request.getAttribute("confirmationMessage") %>
    </div>
    <% } %>
    <form action="catégorie" method="post">
        <input type="hidden" name="_method" value="POST"><jsp:text /></input>
        <div class="form-group">
            <label for="name">Nom de la catégorie:</label>
            <input type="text" class="form-control" id="name" name="name">
        </div>
        <div class="form-group">
            <label for="description">Description de la catégorie:</label>
            <input type="text" class="form-control" id="description" name="description">
        </div>
        <div class="form-group">
            <label for="createdAt">Date de création:</label>
            <input type="date" class="form-control" id="createdAt" name="createdAt">
        </div>
        <button type="submit" class="btn btn-primary">Enregistrer</button>
    </form>

</div>




<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

