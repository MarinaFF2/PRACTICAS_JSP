<%-- 
    Document   : index
    Created on : 27-sep-2019, 18:44:43
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
        
        <form name="formu" action="login.jsp" method="POST">
            <p>Usuario <input type="text" name="usuario" value=""></p> 
            <p>Password <input type="password" name="pwd" value=""> </p>
            <a href="registrarse.jsp">Regístrese</a>
            <p></p>
            <a href="olvidoPwd.jsp">He olvidado la contraseña</a>
            <br>
            <input type="submit" name="aceptar" value="Aceptar">
        </form>
        
        <%--
        salidas de pantalla
        //ser admin
        //ser user
        //tener mal correo o pwd
        //olvidar pwd 
        --%>
    </body>
</html>
