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
        <form name="registro" action="../controlador/conector.jsp" method="POST">
            <p>Email <input type="email" name="email" value=""></p>
            <p>Edad <input type="number" name="edad" value="0"></p>
            <p>Clave <input type="password" name="pwd" value=""></p>
            <p>Repite clave <input type="password" name="rePwd" value=""></p>
            <fieldset>
                <legend>Tipo de usuario</legend>
                <input type="radio" name="tipo" value="admin">Administrador<br>
                <input type="radio" name="tipo" value="normal">Usuario normal
            </fieldset>
            <input type="submit" name="acepRegis" value="aceptar">
            <a href="../index.jsp">Volver</a>
        </form>
    </body>
</html>
