fs<%-- 
    Document   : login
    Created on : 27-sep-2019, 18:24:37
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
            if(request.getParameter("aceptar")!=null){
                Lista v = (Lista) session.getAttribute("usuarioArray");
                if(request.getParameter("usuario")!=null){
                    String usuario = request.getParameter("usuario");
                    String clave = request.getParameter("pwd");
                    
                    for (int i = 0; i < v.getTam(); i++) {
                        if((v.getU(i).getUsuario().equals(usuario)) && (v.getU(i).getClave().equals(clave))){
                            session.setAttribute("usu", i);//indice del usuario
                            i=v.getTam();
                        }else{
                            out.print("error de usuario o contraseña, revíselo");
                        }
                    }
                }
                
                int i = (Integer) session.getAttribute("usu");
                    if((v.getU(i).isUser())){//usuario normal
                        response.sendRedirect("loginUser.jsp");
                    }
                if(!(v.getU(i).isUser())){//administrador
    %>
                    <form name="formu" action="login.jsp" method="POST">
                        <p>Como: </p>
                        <select name="comoAcceder">
                            <option value="" selected></option>
                            <option value="admin" selected>Administrador</option>
                            <option value="user" selected>Usuario</option>
                        </select>
                        <input type="submit" name="aceptar" value="Aceptar">
                    </form>
                    <a href="index.jsp">Volver</a>
    <%
                }
            
                if (request.getParameter("comoAcceder") != null ) {
                    if (request.getParameter("comoAcceder").equals("user")) {//login usuario normal
                        response.sendRedirect("loginUser.jsp");
                    }
                    if (request.getParameter("comoAcceder").equals("admin")){
                        response.sendRedirect("tablaUsuarios.jsp");
                    }
                }
        }
        %>
    </body>
</html>
