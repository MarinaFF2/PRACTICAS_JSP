<%-- 
    Document   : valida
    Created on : 17-sep-2019, 10:38:08
    Author     : daw206
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
        <style type="text/css">
            html {
                height:100%;
                background: #766283;
                
            }
            body {
                background: #D1B4E3;
                border: 4px solid;
            }
        </style>
    </head>
    <body>
        <%
            String nombre[] = request.getParameterValues("caja");
            int edad = Integer.parseInt(request.getParameter("edad"));
            String fecha = request.getParameter("fecha");
            for (int i = 0; i < nombre.length; i++) {
                out.print(nombre[i] + "<br>");
            }
            String matricula = request.getParameter("matricula");
            String asignatura = request.getParameter("asignaturas");
            String opciones[] = request.getParameterValues("opciones");

            out.println("");
            out.println(edad);
            out.println("");
            out.println(fecha);
            out.println("");
            out.println(matricula);
            out.println("");
            out.println(asignatura);
            for (int i = 0; i < opciones.length; i++) {
                if (opciones[i] != null) {
                    out.println("Opcion " + opciones[i]);
                }
            }

            out.println("");
        %>
        <br>
        <a href="index.html">Volver</a>
    </body>
</html>
