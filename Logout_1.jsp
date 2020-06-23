<%-- 
    Document   : Logout
    Created on : Dec 15, 2018, 10:50:25 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="css.css"/>
<div id="course-table">
    <%
        session.removeAttribute("username");
        response.sendRedirect("DisplayMessages.jsp");
    %>
</div>