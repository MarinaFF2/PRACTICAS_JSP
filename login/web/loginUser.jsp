<%-- 
    Document   : loginUser
    Created on : 01-oct-2019, 9:35:44
    Author     : daw207
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
        <p>Hola usuario</p>
        <%
            Lista v = (Lista) session.getAttribute("usuarioArray");
            int i = (Integer) session.getAttribute("usu");
            out.print("Edad: " + v.getU(i).getEdad() + "<br>");//tienes  x años
            if (request.getParameter("boton") != null) {
                if (request.getParameter("boton").equals("Volver")) {
                    response.sendRedirect("index.jsp");
                }
                if (request.getParameter("boton").equals("CerrarSesion")) {
                    session.removeAttribute("usu");
                    response.sendRedirect("index.jsp");
                }
            }
        %>
        <form name="formu" action="loginUser.jsp" method="POST">
            <input type="submit" name="boton" value="Volver"/>
            <input type="submit" name="boton" value="CerrarSesion"/>
        </form>
    </body>
</html>
