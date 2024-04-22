<%-- 
    Document   : ganar
    Created on : 24-sep-2019, 10:26:07
    Author     : laumf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bonico.css" media="screen" />
        <title>Has ganado</title>
    </head>
    <body>
        <h1>La Mosca Returns (again)</h1>
        <p>¡La has cazado!</p>
        <%
            session.removeAttribute("tablero");
            session.removeAttribute("intentos");
        %>
        <form name="ganar" action="index.jsp" method="post">
            <input name="volver" type="submit" class="boton" value="Volver" />
        </form>
    </body>
</html>
