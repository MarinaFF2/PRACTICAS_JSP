<%-- 
    Document   : newjsp
    Created on : 27-sep-2019, 12:37:20
    Author     : daw207
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="clase.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Encuesta</h1>
        <%
            if(session.getAttribute("personaArray")==null){
                ArrayList v = new ArrayList<Persona>();//encuesta
                session.setAttribute("personaArray", v);
            }
        %>
        <form name="formalario" action="registrar.jsp" method="POST">
            Edad <input type="number" name="edad" value="0" required>
            <fieldset>
                <legend>Curso</legend>
                <input type="radio" name="curso" value="DAM">DAM<br>
                <input type="radio" name="curso" value="DAW">DAW<br>
                <input type="radio" name="curso" value="ASIR">ASIR
            </fieldset>
            <fieldset>
                <legend>Asignatura</legend>
                <input type="checkbox" name="asig" value="Programacion">Programacion<br>
                <input type="checkbox" name="asig" value="Base de Datos">Base de Datos<br>
                <input type="checkbox" name="asig" value="Sistemas informaticos">Sistemas informaticos<br>
                <input type="checkbox" name="asig" value="Lenguajes de Marcas">Lenguajes de Marcas<br>
                <input type="checkbox" name="asig" value="Formacion del trabajador">Formacion del trabajador
            </fieldset>
            <input type="submit" name="boton" value="Registrar">
            <input type="submit" name="boton" value="Resumen">
        </form>
    </body>
</html>
