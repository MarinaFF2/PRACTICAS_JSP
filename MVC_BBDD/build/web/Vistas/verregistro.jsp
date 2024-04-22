<%-- 
    Document   : verregistro
    Created on : 07-oct-2019, 15:48:39
    Author     : fernando
--%>

<%@page import="java.util.HashMap"%>
<%@page import="Modelo.Persona"%>
<%@page import="Modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           
            out.println(session.getId() + " " + session.getMaxInactiveInterval() + "<br>");
            Persona p = (Persona) session.getAttribute("obj");
            out.println("Iniciada sesión como: " + p + "<br>");
            
            
            String cad = (String) session.getAttribute("nombSeleccionado");
            out.println("Has seleccionado: " + cad + "<br>");

            //Descomenta esto si has metido en la sesión la tabla Hash:
            /*String dni = (String) session.getAttribute("dniSeleccionado");
            HashMap<String, Persona> personas = (HashMap<String, Persona>) session.getAttribute("personas");
            Persona p = personas.get(dni);
            out.println("La información de toda la persona es: " + p + "<br>");*/
        %>
        <form name="ve" action="../controlador.jsp" method="POST">
            <input type="submit" name="volverRegistro" value="Volver">
        </form>
    </body>
</html>
