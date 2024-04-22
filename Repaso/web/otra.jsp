<%-- 
    Document   : otra
    Created on : 26-sep-2019, 9:08:24
    Author     : fernando
--%>

<%@page import="Clases.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int n = (Integer) session.getAttribute("sesEdad");
            out.println(n);
            
            if (request.getParameter("caj") == null) {
                out.println("Primera vez");
        %>
        <form name="formul" action="otra.jsp" method="POST">
            <input type="text" value="" name="caj">
            <input type="submit" name="boton" value="Aceptar">
        </form>
        <%        
            } else {
                String val = request.getParameter("caj");
                out.println(val);
                Persona p = new Persona(val, n);
                out.print(p);
            }%>

    </body>
</html>
