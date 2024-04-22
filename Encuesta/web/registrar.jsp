<%-- 
    Document   : index
    Created on : 27-sep-2019, 10:59:36
    Author     : daw207
--%>

<%@page import="clase.Persona"%>
<%@page import="java.util.ArrayList"%>
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
            if (request.getParameter("boton").equals("Registrar")) {
                ArrayList v = (ArrayList) session.getAttribute("personaArray");
                int edad = Integer.parseInt(request.getParameter("edad"));
                  out.print("edad: "+edad+"<br>");
                String curso = request.getParameter("curso");
                  out.print("curso: "+curso+"<br>");
                ArrayList asig = new ArrayList();//asignaturas
                String asis [] = request.getParameterValues("asig");
                out.print("asignatura: <br>");
                for (int i = 0; i < asis.length; i++) {
                    if(asis[i]!=null){
                        asig.add(asis[i]);
                        out.print(asis[i]+"<br>");
                    }
                }
                out.print("<a href='index.jsp'>Volver</a>");

                Persona p = new Persona(edad,curso,asig);
                v.add(p);
                session.setAttribute("personaArray", v);
            }
            if (request.getParameter("boton").equals("Resumen")){ //resumen
                ArrayList m = (ArrayList) session.getAttribute("personaArray");
                out.print("encuestas: <br>");
                //for (int i = 0; i < m.size(); i++) {
                    out.print(m+"<br>");
                //}
            }
        %>
    </body>
</html>
