<%-- 
    Document   : tablaUsuarios
    Created on : 27-sep-2019, 19:08:03
    Author     : 5amar
--%>

<%@page import="clases.Lista"%>
<%@page import="clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            Lista v = (Lista) session.getAttribute("usuarioArray");

            if (request.getParameter("bot")!=null ) {
                
                String cor = request.getParameter("nom");
                int t = Integer.parseInt(request.getParameter("edad"));
                if (request.getParameter("bot").equals("X")) {
                    v.eliminar(cor);
                    session.setAttribute("usuarioArray", v);
                    response.sendRedirect("tablaUsuarios.jsp");
                }
                if (request.getParameter("bot").equals("Editar")) {
                    v.editar(cor, t);
                    session.setAttribute("usuarioArray", v);
                    response.sendRedirect("tablaUsuarios.jsp");
                }
            }
                for (int i = 0; i < v.getTam(); i++) {
        %>
                    <form  name="formu" action="tablaUsuarios.jsp" method="POST">
                        <input type="text" name="nom" value="<%out.print(v.getU(i).getCorreo());%>" readonly="true">
                        <input type="text" name="edad" value="<%out.print(v.getU(i).getEdad());%>">
                        <input type="submit" name="bot" value="X">
                        <input type="submit" name="bot" value="Editar">
                    </form>
        <%   
                }
            

            if (request.getParameter ("boton") != null) {
                if (request.getParameter("boton").equals("+")) {
                    response.sendRedirect("registrarse.jsp");
                }
                if (request.getParameter("boton").equals("volver")) {
                    response.sendRedirect("login.jsp");
                }
            }
        %>
        <form  name="formu1" action="tablaUsuarios.jsp" method="POST">
            <input type="submit" name="boton" value="+">
            <input type="submit" name="boton" value="volver">
        </form>
    </body>
</html>
