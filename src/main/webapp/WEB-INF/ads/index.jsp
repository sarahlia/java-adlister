<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here are all the ads!</h1>

    <p>email=<c:out value="${users.email}" /></p>
    <p>name=<c:out value="${users.username}" /></p>


    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2><c:out value="${ad.title}" /></h2>
            <p>Ad id#<c:out value="${ad.id}" /></p>
            <p><c:out value="${ad.description}" /></p>
            <p>Created by user id: <c:out value="${ad.userId}" /></p>
            <p>name=<c:out value="${users.username}" /></p>
        </div>
    </c:forEach>

<%--    <c:forEach var="user" items="${users}">--%>
<%--        <div class="col-md-6">--%>
<%--            <p>name<c:out value="${user}" /></p>--%>
<%--        </div>--%>
<%--    </c:forEach>--%>


</div>

</body>
</html>
