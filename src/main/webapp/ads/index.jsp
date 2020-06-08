<%--
  Created by IntelliJ IDEA.
  User: sarahlianainggolan
  Date: 6/8/20
  Time: 2:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Viewing all the ads" />
    </jsp:include>
</head>

<body>
    <jsp:include page="/partials/navbar.jsp"></jsp:include>

    <div class="container">
        <h3>Here are all the ads:</h3>

        <c:forEach var="ad" items="${ads}">
            <div class="ad">
                <h3>${ad.title}</h3>
                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </div>
</body>

</html>


