<%-- 
    Document   : controladorJuego
    Created on : 11-oct-2019, 10:38:25
    Author     : marina flores
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="olvidoPwd" action="../controlador/conector.jsp" method="post">
            <input type="text" name="email" placeholder="Introduzca su correo"><br>
            <input class="botones" type="submit" name="botOlvidoPwd" value="Recuperar contraseña">
        </form>
    </body>
</html>
