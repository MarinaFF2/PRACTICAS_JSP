<%-- 
    Document   : index
    Created on : 26-sep-2019, 0:05:17
    Author     : Nathan
--%>

<%@page import="Clases.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
    </head>
    <body>
        <h3>Formulario</h3>
        <form name="formulario" action="index.jsp" method="POST">
            <label for="edad">Edad: </label><input type="number" name="edad" value="">
            <br>
            <fieldset>
                <legend>Curso</legend>
                <input type="radio" name="curso" value="DAM">DAM
                <br>
                <input type="radio" name="curso" value="DAW">DAW
                <br>
                <input type="radio" name="curso" value="ASIR">ASIR
            </fieldset>
            <fieldset>
                <legend>Asignaturas preferidas</legend>
                <input type="checkbox" name="asig" value="prog">Programación
                <br>
                <input type="checkbox" name="asig" value="bbdd">Bases de datos
                <br>
                <input type="checkbox" name="asig" value="sinf">Sistemas informáticos
                <br>
                <input type="checkbox" name="asig" value="lmsgi">Lenguajes de marcas
                <br>
                <input type="checkbox" name="asig" value="ent">Entornos de desarrollo
                <br>
                <input type="checkbox" name="asig" value="dis">Diseño de interfaces web
            </fieldset>
            <br>
            <input type="submit" name="boton" value="Aceptar">
            <input type="submit" name="boton" value="Resumen">
        </form>
        <%
            if (session.getAttribute("lista") == null) {
                Lista l = new Lista();
                session.setAttribute("lista", l);
            } else {
                if (request.getParameter("boton").equals("Aceptar")) {
                    int ed = Integer.parseInt(request.getParameter("edad"));
                    String cur = request.getParameter("curso");
                    String asig[] = request.getParameterValues("asig");

                    out.println(ed + "<br>");
                    out.println(cur + "<br>");
                    for (int i = 0; i < asig.length; i++) {
                        if (!asig[i].equals("")) {
                            out.println(asig[i]);
                        }
                    }
                    Lista lis = (Lista) session.getAttribute("lista");
                    Datos dat = new Datos(ed, cur, asig);
                    lis.addLast(dat);
                    session.setAttribute("lista", lis);
                }
                if (request.getParameter("boton").equals("Resumen")) {
                    response.sendRedirect("resumen.jsp");
                }
            }
        %>
    </body>
</html>
