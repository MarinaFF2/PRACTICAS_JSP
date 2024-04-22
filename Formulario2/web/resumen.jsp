<%-- 
    Document   : resumen
    Created on : 26-sep-2019, 0:03:34
    Author     : Nathan
--%>

<%@page import="Clases.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resumen</title>
    </head>
    <body>
        <h3>Resumen</h3>
        <%
            Lista list = (Lista) session.getAttribute("lista");

            int edadMedia = list.mediaEdad();
            out.println("La media de edad es " + edadMedia);

            int ctos;
            ctos = list.contCurso("DAM");
            out.println("<br> DAM: " + ctos);
            ctos = list.contCurso("DAW");
            out.println("<br> DAW: " + ctos);
            ctos = list.contCurso("ASIR");
            out.println("<br> ASIR: " + ctos);

            int asig;
            asig = list.contAsig("prog");
            out.println("<br> Programación: " + asig);
            asig = list.contAsig("bbdd");
            out.println("<br> Bases de datos: " + asig);
            asig = list.contAsig("sinf");
            out.println("<br> Sistemas informáticos " + asig);
            asig = list.contAsig("lmsgi");
            out.println("<br> Lenguajes de marcas " + asig);
            asig = list.contAsig("ent");
            out.println("<br> Entornos de desarrollo: " + asig);
            asig = list.contAsig("dis");
            out.println("<br> Diseño de interfaces web: " + asig);
        %>
        <br>
        <br>
        <form name="formulario" action="index.jsp" method="POST">
            <input type="submit" name="boton" value="Volver">
        </form>
    </body>
</html>
