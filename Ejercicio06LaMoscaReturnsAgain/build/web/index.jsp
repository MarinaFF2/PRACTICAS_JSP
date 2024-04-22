<%-- 
    Document   : index
    Created on : 20-sep-2019, 12:29:50
    Author     : laumf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>La Mosca Returns (again)</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bonico.css" media="screen" />
    </head>
    <body>
        <h1>La Mosca Returns (again)</h1>
        <form name="ncasillas" action="tablero.jsp" method="post">
            <label for="cas">¿Cuantas casillas quieres que tenga el tablero?</label>
            <input name="casillas" class="texto" type="text" value=""/>
            <input name="aceptar" class="boton" type="submit" value="Aceptar"/>
        </form>
    </body>
</html>
