<%-- 
    Document   : victoria
    Created on : 20-sep-2019, 11:10:22
    Author     : daw204
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>¡Has ganado! :)</h3>
        
        <%
            out.println("El número oculto era " + session.getAttribute("azar") + " y lo has adivinado, crack");
        %>
        
        <br>
        <br>
        <form name="formulario" action="index.jsp" method="POST">
            <input type="submit" name="boton" value="Volver a jugar">
        </form>
    </body>
</html>
