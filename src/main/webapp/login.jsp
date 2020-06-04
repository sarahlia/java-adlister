<%--
  Created by IntelliJ IDEA.
  User: sarahlianainggolan
  Date: 6/4/20
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        }
    }
%>

<html>

<head>
<%-- Another way to do include. Can be with or without closing jsp tag. --%>
<jsp:include page="partials/head.jsp">
    <jsp:param name="title" value="Please Log In"/>
</jsp:include>
</head>

<body>
    <%@include file="partials/navbar.jsp"%>

    <div class="container">
        <h3>Please Log In</h3>
        <form action="/login.jsp" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password">
            </div>
            <input type="submit">
        </form>
    </div>
</body>

</html>