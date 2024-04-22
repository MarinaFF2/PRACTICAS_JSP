<%-- 
    Document   : resultado
    Created on : 20-sep-2019, 10:52:11
    Author     : Nathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>¡Has perdido! :(</h3>

        <%
            out.println("El número oculto era " + session.getAttribute("azar"));
        %>

        <br>
        <br>
        <form name="formulario" action="index.jsp" method="POST">
            <input type="submit" name="boton" value="Volver a jugar">
        </form>
    </body>
</html>
