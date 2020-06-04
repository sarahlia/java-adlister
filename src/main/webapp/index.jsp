<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Welcome." />
    </jsp:include>
</head>

<body>
    <%@include file="partials/navbar.jsp"%>

    <c:if test="true">
        <h3>Variable names should be very descriptive</h3>
    </c:if>
    <c:if test="false">
        <h3>single letter variable names are good</h3>
    </c:if>
</body>

</html>
