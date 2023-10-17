<div>
    <c:if test="${not empty sessionScope.error}">
        <div class="alert alert-danger">
            <c:out value="${sessionScope.error}" />
        </div>
    </c:if>
    <c:if test="${not empty sessionScope.warning}">
        <div class="alert alert-warning">
            <c:out value="${sessionScope.warning}" />
        </div>
    <c:if test="${not empty sessionScope.success}">
        <div class="alert alert-success">
            <c:out value="${sessionScope.success}" />
        </div>
    </c:if>
</div>