<%-- 
    Document   : logout
    Created on : 19 Apr, 2020, 9:29:24 PM
    Author     : sanjay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*,connect.Connect" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>log out</title>
    </head>
    <body>
        <%
            session.setAttribute("userid", null);
            session.invalidate();
            response.sendRedirect("index.html");
        %>
    </body>
</html>
