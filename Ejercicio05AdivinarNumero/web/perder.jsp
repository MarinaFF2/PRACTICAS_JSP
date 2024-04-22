<%-- 
    Document   : perder
    Created on : 20-sep-2019, 10:42:34
    Author     : laumf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>:(</title>
        <link rel="stylesheet" type="text/css" href="bonico.css" media="screen" />
    </head>
    <body>
        <h1>Has perdido.  El número era:
            <% int num = (Integer) session.getAttribute("numsesion");
                out.println(num);
                session.removeAttribute("numsesion");
                session.removeAttribute("intentos");
            %>           
        </h1>
        <form name="formvolver" action="index.jsp" method="post">
            <input name="boton" class="boton" type="submit" value="Volver"/>
        </form>
    </body>
</html>
