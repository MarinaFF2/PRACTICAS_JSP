<%-- 
    Document   : exito
    Created on : 04-oct-2019, 11:56:58
    Author     : fernando
--%>

<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
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
            out.println("Iniciada sesión como: " + p);

            //Opción a) Con LinkedList.
            LinkedList<Persona> personas = (LinkedList) session.getAttribute("personas");

            //Opción b) Con tablas Hash.
            //HashMap<String, Persona> personas = (HashMap<String, Persona>) session.getAttribute("personas");
            //Opción a) Con LinkedList
            for (Persona paux : personas) {

                //Opción b) Con tablas Hash.
                //for (Persona paux : personas.values()) {
%>

        <form name="for" action="../controlador.jsp" method="POST">
            <input type="text" name ="dni" value='<%= paux.getDNI()%>' readonly>
            <input type="text" name ="nombre" value='<%= paux.getNombre()%>' readonly>
            <input type="submit" name="acepCRUD" value="Aceptar">
        </form>
        <%

            }
        %>
        <form name="cerS" action="../controlador.jsp" method="POST">
            <input type="submit" name="cerrarSesion" value="Cerrar sesión">
        </form>
    </body>
</html>
