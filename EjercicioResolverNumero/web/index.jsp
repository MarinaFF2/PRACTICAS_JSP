<%-- 
    Document   : index
    Created on : 19-sep-2019, 9:48:29
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
        <%
            if (request.getParameter("numero")==null) {
                int intentosj = 3;
                session.setAttribute("intentos", intentosj);
                int numero = (int) (Math.random() * 10 + 1);
                session.setAttribute("oculto", numero);
        %>
        <form name="formulario" action="index.jsp" method="post">
            Pon un numero del 1 al 10: <input type="text" name="numero" value="">
            <input type="submit" name="Boton" value="prueba">
            <input type="submit" name="Boton" value="rendirse">
        </form>
        <%
            }
        else{
            out.println("Numero oculto = " + session.getAttribute("oculto"));
            int intent = (Integer) (session.getAttribute("intentos"));
            if (request.getParameter("Boton").equals("prueba") && intent>=0 ) {
                intent--;
                session.setAttribute("intentos", intent);
                int valor = (Integer) (session.getAttribute("oculto"));
                if (valor == Integer.parseInt(request.getParameter("numero"))) {
                
        %>
        
        <%
            response.sendRedirect("ganada.jsp");
        %>
        <h1>Has acertado!! ojala no lo hubieras hecho</h1>
        <form name="formulario" action="index.jsp" method="post">
            <input type="submit" name="Boton" value="reiniciar">
        </form>
        <%
        } else {
            if (valor > Integer.parseInt(request.getParameter("numero"))) {
        %>
        <h1>El numero es mayor</h1>
        <form name="formulario" action="index.jsp" method="post">
            Pon un numero del 1 al 10: <input type="text" name="numero" value="">
            <input type="submit" name="Boton" value="prueba">
            <input type="submit" name="Boton" value="rendirse">
        </form>
        <%
        } else {
        %>
        <h1>El numero es menor</h1>
        <form name="formulario" action="index.jsp" method="post">
            Pon un numero del 1 al 10: <input type="text" name="numero" value="">
            <input type="submit" name="Boton" value="prueba">
            <input type="submit" name="Boton" value="rendirse">
        </form>
        <%
                }

            }
        %>

        <%
        } else {
        %>
        
        <%
            response.sendRedirect("perdida.jsp");
        %>
        <%--
        <h1>Que pena que das</h1>
        <p>El numero era <%out.print(session.getAttribute("oculto"));%></p>
        <form name="formulario" action="index.jsp" method="post">
            <input type="submit" name="Boton" value="reiniciar">
        </form>
        --%>
        <%
            }
        }
        %>
    </body>
</html>
