<%-- 
    Document   : ganar
    Created on : 20-sep-2019, 10:41:20
    Author     : laumf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>:)</title>
        <link rel="stylesheet" type="text/css" href="bonico.css" media="screen" />
    </head>
    <body>
        <h1>¡Has acertado!</h1>
        <%
            session.removeAttribute("numsesion");
            session.removeAttribute("intentos");
        %> 
        <form name="formvolver" action="index.jsp" method="post">
            <input name="boton" class="boton" type="submit" value="Volver"/>
        </form>
    </body>
</html>
