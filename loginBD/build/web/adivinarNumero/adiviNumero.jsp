<%-- 
    Document   : validar
    Created on : 24-sep-2019, 9:22:15
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
        <form name="adiviJuego" action="../controlador/controladorJuego.jsp" method="POST">
            <p>Numero
                <input type="text" name="numUsu" value="">
                <br>
                <input type="submit" name="aceptar" value="Aceptar">
            </p>
            <input type="submit" name="botonLoginUser" value="Volver"/>
        </form>
    </body>
</html>
