<%-- 
    Document   : registrarse
    Created on : 27-sep-2019, 18:22:11
    Author     : 5amar
--%>

<%@page import="clases.Usuario"%>
<%@page import="clases.Lista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(session.getAttribute("usuarioArray")==null){
                Lista l = new Lista();//encuesta
                session.setAttribute("usuarioArray", l);
                out.print("no hay ningún usuario en el ARRAY, REGISTRATE");
            }
            if(request.getParameter("aceptar")!=null){
                Lista l = (Lista)session.getAttribute("usuarioArray");
                String email = request.getParameter("email");
                int edad = Integer.parseInt(request.getParameter("edad"));
                String clave = request.getParameter("pwd");
                String reClave = request.getParameter("rePwd");
                String op = request.getParameter("tipo");
                boolean opcion;
                if(op.equals("normal")){
                    opcion=true;
                }else{
                    opcion=false;
                }
                if(l.getTam()==0){
                    if(clave.equals(reClave)){
                        Usuario u = new Usuario(email, edad, clave, opcion);
                        l.addU(u);
                        session.setAttribute("usuarioArray", l);
                        out.print("ya has creado tu usuario, puedes hacer sesión ahora");
                    }else{
                        out.print("Error las claves no coinciden, vuelve a intentarlo");
                    }
                }else{ 
                    if(clave.equals(reClave)){
                        l = (Lista)session.getAttribute("usuarioArray");
                        Usuario u = new Usuario(email, edad, clave, opcion);
                        l.addU(u);
                        session.setAttribute("usuarioArray", l);
                        out.print("ya has creado tu usuario, puedes hacer sesión ahora");
                    }else{
                        out.print("Error las claves no coinciden, vuelve a intentarlo");
                    }
                         
                }
            }
        %>
        <form name="formu" action="registrarse.jsp" method="POST">
            <p>Email <input type="email" name="email" value=""></p>
            <p>Usuario <input type="text" name="usuario" value=""></p>
            <p>Nombre <input type="text" name="nombre" value=""></p>
            <p>Edad <input type="number" name="edad" value="0"></p>
            <p>Clave <input type="password" name="pwd" value=""></p>
            <p>Repite clave <input type="password" name="rePwd" value=""></p>
            <fieldset>
                <legend>Tipo de usuario</legend>
                <input type="radio" name="tipo" value="admin">Administrador<br>
                <input type="radio" name="tipo" value="normal">Usuario normal
            </fieldset>
            <input type="submit" name="aceptar" value="aceptar">
            <a href="index.jsp">Volver</a>
        </form>
    </body>
</html>
