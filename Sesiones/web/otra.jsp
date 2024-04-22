<%-- 
    Document   : otra
    Created on : 19-sep-2019, 9:28:22
    Author     : fernando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String va = (String) session.getAttribute("valorSesion");
            out.println("El valor de la sesión es: " + va);
            %>
    </body>
</html>
