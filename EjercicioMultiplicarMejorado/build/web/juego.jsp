<%-- 
    Document   : juego
    Created on : 17-sep-2019, 11:07:24
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
        <h1>Tablas de Multiplicar</h1>
        <%int n = Integer.parseInt(request.getParameter("numero"));%>
        <form name="juego" action="resultado.jsp" method="post">
            Tabla del <%out.println(n);%><br/>
            <%
                for (int i = 0; i <= 10; i++) {
                    out.println(n + " * "+i+" = ");%>
                    <input type="text" name="resultado" value="0"><br/>
            <%
                }
            %>
            <input type="submit" name="aceptar" value="aceptar">
            <input type="hidden" name="n" value="<%out.print(n);%>">
        </form>
    </body>
</html>
