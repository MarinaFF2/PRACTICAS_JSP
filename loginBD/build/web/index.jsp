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
        <form name="indexa" action="controlador/conector.jsp" method="POST">
            <p>Usuario <input type="text" name="usuario" value=""></p> 
            <p>Password <input type="password" name="pwd" value=""> </p>
            <a href="vista/registrarse.jsp">Regístrese</a>
            <p></p>
            <a href="vista/olvidoPwd.jsp">He olvidado la contraseña</a>
            <br>
            <input type="submit" name="acepIndex" value="Aceptar">
        </form>
    </body>
</html>
