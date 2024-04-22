<%-- 
    Document   : valida
    Created on : 19-sep-2019, 9:27:27
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
        String valor = request.getParameter("caja");
        session.setAttribute("valorSesion", valor);
            %>
            <a href="otra.jsp">otra</a>
    </body>
</html>
