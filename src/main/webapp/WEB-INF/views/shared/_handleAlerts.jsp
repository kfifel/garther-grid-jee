<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="alert-container">
    <c:if test="${not empty requestScope.error}">
        <div class="alert alert-danger custom-alert">
            <c:out value="${requestScope.error}" />
        </div>
    </c:if>
    <c:if test="${not empty requestScope.warning}">
        <div class="alert alert-warning custom-alert">
            <c:out value="${requestScope.warning}" />
        </div>
    </c:if>
    <c:if test="${not empty requestScope.success}">
        <div class="alert alert-success custom-alert">
            <c:out value="${requestScope.success}" />
        </div>
    </c:if>
</div>