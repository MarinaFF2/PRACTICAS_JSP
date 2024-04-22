<%-- 
    Document   : perdida
    Created on : 20-sep-2019, 10:34:13
    Author     : carlox
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Que pena que das</h1>
        <p>El numero era <%out.print(session.getAttribute("oculto"));%></p>
        <form name="formulario" action="index.jsp" method="post">
            <input type="submit" name="Boton" value="reiniciar">
        </form>
    </body>
</html>
