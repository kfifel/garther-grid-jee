<%@ page import="java.util.List" %>
<%@ page import="com.youcode.garthergridjee.entities.EventCategory" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Affichage des catégories d'événements</title>
</head>
<body>
<a href="form.jsp">ajouter</a>
<h2>List des catégories d'événements</h2>
<table>
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Description</th>
        <th>Date de création</th>
        <th>Action</th>
    </tr>


    <c:forEach var="category" items="${requestScope.eventCategories}">
        <tr>
            <td>${category.id} </td>
            <td>${category.name}</td>
            <td>${category.description}</td>
            <td><fmt:formatDate value="${category.createdAt}" pattern="dd-MM-yyyy"/></td>
            <td>
                <a href="editCategory.jsp?id=${category.id}&name=${category.name}&description=${category.description}&createdAt=${category.createdAt}">Modifier</a>
                <form action="catégorie" method="DELETE">
                    <input type="hidden" name="_method" value="PUT"><jsp:text />
                    <input type="hidden" name="id" value="${category.id}"><jsp:text />
                    <input type="submit" value="Supprimer">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
