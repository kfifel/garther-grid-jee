<%@ page import="java.util.List" %>
<%@ page import="com.youcode.garthergridjee.entities.EventCategory" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Affichage des catégories d'événements</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">
    <a href="form.jsp" class="btn btn-primary mb-3">Ajouter</a>
    <h2>Liste des catégories d'événements</h2>
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Description</th>
            <th>Date de création</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="category" items="${requestScope.eventCategories}">
            <tr>
                <td>${category.id}</td>
                <td>${category.name}</td>
                <td>${category.description}</td>
                <td><fmt:formatDate value="${category.createdAt}" pattern="dd-MM-yyyy"/></td>
                <td>
                    <a href="editCategory.jsp?id=${category.id}&amp;name=${category.name}&amp;description=${category.description}&amp;createdAt=${category.createdAt}" class="btn btn-primary">Modifier</a>
                    <form action="catégorie" method="POST" style="display: inline;">
                        <input type="hidden" name="_method" value="DELETE"/>
                        <input type="hidden" name="id" value="${category.id}"/>
                        <button type="submit" class="btn btn-danger">Supprimer</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
