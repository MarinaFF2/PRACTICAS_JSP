<%-- 
    Document   : index
    Created on : 26-sep-2019, 11:02:04
    Author     : laumf
--%>

<%@page import="Package.Datos"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Índice</title>
        <link rel="stylesheet" type="text/css" href="newcss.css" media="screen" />
    </head>
    <body>
        <%
            if (session.getAttribute("lista") == null || request.getParameter("boton") == null) {
                LinkedList<Datos> lista = new LinkedList<Datos>();
                session.setAttribute("lista", lista);
            } else {
                String boton = request.getParameter("boton");
                LinkedList<Datos> lista = (LinkedList<Datos>) session.getAttribute("lista");
                if (boton.equals("Aceptar")) {
                    Datos dat = new Datos();
                    if (request.getParameter("edad") != null && request.getParameter("curso") != null && request.getParameter("asignatura") != null) {
                        dat.setEdad(Integer.parseInt(request.getParameter("edad")));
                        String curso[] = request.getParameterValues("curso");
                        for (int i = 0; i < curso.length; i++) {
                            dat.setCurso(i, curso[i]);
                        }
                        String asig[] = request.getParameterValues("asignatura");
                        for (int i = 0; i < asig.length; i++) {
                            dat.setAsignatura(i, asig[i]);
                        }
                        lista.add(dat);
                        session.setAttribute("lista", lista);
                    }
                }
                if (boton.equals("Resumen")) {
                    response.sendRedirect("resumen.jsp");
                }
            }
        %>
        <form name="formulario" action="index.jsp" method="post">
            <label for="edad">Edad </label><input type="number" name="edad" id="edad" min="17"/>
            <fieldset id="cursos">
                <legend>Curso</legend>
                <input type="radio" name="curso" id="dam" value="DAM"/><label for="dam"> DAM</label>
                <input type="radio" name="curso" id="daw" value="DAW"/><label for="daw"> DAW</label>
                <input type="radio" name="curso" id="asir" value="ASIR"/><label for="asir"> ASIR</label>
            </fieldset>
            <fieldset id="asignaturas">
                <legend>Asignaturas preferidas</legend>
                <input type="checkbox" name="asignatura" id="prog" value="Programacion"/><label for="prog"> Programación</label><br>
                <input type="checkbox" name="asignatura" id="leng" value="Lenguajes de marcas"/><label for="leng"> Lenguajes de marcas</label><br>
                <input type="checkbox" name="asignatura" id="sist" value="Sistemas informaticos"/><label for="sist"> Sistemas informáticos</label><br>
                <input type="checkbox" name="asignatura" id="bbdd" value="Bases de datos"/><label for="bbdd"> Bases de datos</label><br>
                <input type="checkbox" name="asignatura" id="ingl" value="Ingles"/><label for="ingl"> Inglés</label><br>
                <input type="checkbox" name="asignatura" id="fol" value="FOL"/><label for="fol"> FOL</label><br>
            </fieldset>
            <input type="submit" name="boton" id="aceptar" class="boton" value="Aceptar"/>
            <input type="submit" name="boton" id="resumen" class="boton" value="Resumen"/>
        </form>
    </body>
</html>
