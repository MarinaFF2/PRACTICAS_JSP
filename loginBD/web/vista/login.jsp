<%-- 
    Document   : controladorJuego
    Created on : 11-oct-2019, 10:38:25
    Author     : marina flores
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="clases.Usuario"%>
<%@page import="clases.ConexionEstatica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="formu" action="../controlador/conector.jsp" method="POST">
            <p>Como: </p>
            <select name="comoAcceder">
                <option value="admin" selected>Administrador</option>
                <option value="user" selected>Usuario</option>
            </select>
            <input type="submit" name="acepLogin" value="Aceptar">
        </form>
        <a href="../index.jsp">Volver</a>
    </body>
</html>
