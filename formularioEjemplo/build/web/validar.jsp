<%-- 
    Document   : validar.jsp
    Created on : 22-sep-2019, 21:13:24
    Author     : 5amar
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <% String nombre = request.getParameter("nombre");
            String apellidos = request.getParameter("apellidos");
            String fec = request.getParameter("day");
                SimpleDateFormat sdf= new SimpleDateFormat("dd-MM-yyyy");
                Date fecha = sdf.parse(fec);
            int num = Integer.parseInt(request.getParameter("numero"));
            String curso = request.getParameter("curso");
            String asignatura = request.getParameter("asignaturas");
            String opciones[] = request.getParameterValues("opcion");
            
                out.print("Nombre: "+nombre+
                    "<br> Apellidos: "+apellidos+
                    "<br> Fecha: "+fecha+
                    "<br> Numero: "+num+
                    "<br> Curso: "+curso+
                    "<br> Asignatura: "+asignatura+
                    "<br> Opciones: ");
            for (int i = 0; i < opciones.length; i++) {
                out.print("<br>"+opciones[i]);
            }
            
        %>
        <a href="index.html"><br>Volver</a>
    </body>
</html>
