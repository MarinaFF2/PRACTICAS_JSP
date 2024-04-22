<%-- 
    Document   : index
    Created on : 19-sep-2019, 9:16:08
    Author     : fernando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            if (request.getParameter("caja") != null) {
                String valor = request.getParameter("caja");
                out.println("Has introducido " + valor);
            } else {
                    %>
        <form name="for" action="index.jsp" method="POST">
            <input type="text" name="caja" value="">
            <input type="submit" name="aceptar" value="Aceptar">
        </form>
        <%}%>
    </body>
</html>
