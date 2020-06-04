<%--
  Created by IntelliJ IDEA.
  User: sarahlianainggolan
  Date: 6/4/20
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>

<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%--%>
<%--    if ( request.getParameter("username").equalsIgnoreCase("admin") && request.getParameter("password").equalsIgnoreCase("password") ) {--%>
<%--        response.sendRedirect("/profile.jsp");--%>
<%--    } else {--%>
<%--        response.sendRedirect("/login.jsp");--%>
<%--    }--%>
<%--%>--%>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/login.jsp" method="post">
        <div>
            <label for="username">Username</label>
            <input type="text" id="username" name="username">
        </div>
        <div>
            <label for="password">Password</label>
            <input type="password" id="password" name="password">
        </div>
    </form>
</body>
</html>
