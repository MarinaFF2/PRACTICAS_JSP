<%-- 
    Document   : controladorJuego
    Created on : 11-oct-2019, 10:38:25
    Author     : marina flores
--%>

<%@page import="clases.LoginFichero"%>
<%@page import="clases.ConexionEstatica"%>
<%@page import="clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="loginUser" action="../controlador/conector.jsp" method="POST">
            <a href="../adivinarNumero/adiviNumero.jsp">juego de adivinar numeroooo</a>
            <input type="submit" name="botonLoginUser" value="Volver"/>
            <input type="submit" name="botonLoginUser" value="CerrarSesion"/>
        </form>
    </body>
</html>
