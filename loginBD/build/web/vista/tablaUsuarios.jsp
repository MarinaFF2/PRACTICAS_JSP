<%-- 
    Document   : controladorJuego
    Created on : 11-oct-2019, 10:38:25
    Author     : marina flores
--%>

<%@page import="clases.LoginFichero"%>
<%@page import="java.util.LinkedList"%>
<%@page import="clases.ConexionEstatica"%>
<%@page import="clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            ul{
                display: inline;
                padding: 0px;
                margin:20px;
                
            }
            li {
                margin-left: 20px;
                margin-right: 90px;
                font-size: 20px;
                list-style: none;
                float: left;
                padding: 10px;
            }
        </style>
    </head>
    <body>
        <ul>
            <li>Usuario</li>
            <li>Edad</li>
            <li>Actividad</li>
            <li>Opcion</li>
        </ul>
        <br><br><br>
        
        <%
            LinkedList <Usuario> v = (LinkedList < Usuario >) session.getAttribute("listaUsuarios");
            for (int i = 0; i < v.size(); i++) {
        %>
                <form  name="tablaUsuarios1" action="../controlador/conector.jsp" method="POST">
                    <input type="text" name="nom" value="<%out.print(v.get(i).getCorreo());%>" readonly="true">
                    <input type="text" name="edad" value="<%out.print(v.get(i).getEdad());%>">
                    <input type="text" name="acti" value="<%out.print(v.get(i).getActividad());%>" readonly="true">
                    <input type="text" name="admi" value="<%out.print(v.get(i).getUser());%>"  readonly="true">
                    <input type="submit" name="bot1" value="X">
                    <input type="submit" name="bot1" value="Editar">
                    <input type="submit" name="bot1" value="Admin">
                </form>
        <%   
            }
            
        %>
        <form  name="tablaUsuarios2" action="../controlador/controlador/conector.jsp" method="POST">
            <input type="submit" name="bot2" value="+">
            <input type="submit" name="bot2" value="volver">
        </form>
    </body>
</html>
