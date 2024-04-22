<%@page import="java.util.LinkedList"%>
<%@page import="clases.LoginFichero"%>
<%@page import="clases.ConexionEstatica"%>
<%@page import="clases.Email"%>
<%@page import="clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    //session.setMaxInactiveInterval(10); 
    
    if (request.getParameter("acepIndex") != null) {
        String usuari = request.getParameter("usuario");
        String clave = request.getParameter("pwd");

        ConexionEstatica.nueva();
        Usuario n = ConexionEstatica.existeUsuario(usuari, clave);
        if(n!=null){
            session.setAttribute("email", usuari);
            session.setAttribute("pwd", clave);
            if ((n.getUser())==0) {//usuario normal
                ConexionEstatica.Modificar_Dato_Actividad("usuario", usuari, n.getActividad()+1);
                LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " ha accedido al login user");
                ConexionEstatica.cerrarBD();
                response.sendRedirect("../vista/loginUser.jsp");
            }else{
                ConexionEstatica.Modificar_Dato_Actividad("usuario", usuari, n.getActividad()+1);
                LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " ha accedido al login admin");
                ConexionEstatica.cerrarBD();
                response.sendRedirect("../vista/login.jsp");
            }
            
        }else {
            out.print("error de usuario o contraseña, revíselo");
            ConexionEstatica.cerrarBD();
            response.sendRedirect("../index.jsp");
        }
    }

    if (request.getParameter("acepRegis") != null) {
        String email = request.getParameter("email");
        String clave = request.getParameter("pwd");

        ConexionEstatica.nueva();
        Usuario n = ConexionEstatica.existeUsu(email);

        if (n==null) {
            int edad = Integer.parseInt(request.getParameter("edad"));
            String reClave = request.getParameter("rePwd");
            String op = request.getParameter("tipo");
            int opcion;

            if (op.equals("normal")) {
                opcion = 0;
            } else {
                opcion = 1;
            }

            if (clave.equals(reClave)) {
                ConexionEstatica.Insertar_Dato("usuario", email, edad, clave, opcion,0);
                //out.print("ya has creado tu usuario, puedes hacer sesión ahora");
            } else {
                out.print("Error las claves no coinciden, vuelve a intentarlo");
            }
        } else {
            out.print("ya existe");
        }
        ConexionEstatica.cerrarBD();
        response.sendRedirect("../vista/registrarse.jsp");
    }

    if (request.getParameter("acepLogin") != null) {
        String email = (String) session.getAttribute("email");
        String clave = (String) session.getAttribute("pwd");

        ConexionEstatica.nueva();
        Usuario n = ConexionEstatica.existeUsuario(email, clave);
        LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " ha entrado en el sistema.");
        
        if (request.getParameter("comoAcceder") != null) {
            if (request.getParameter("comoAcceder").equals("user")) {//login usuario normal
                LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " ha accedido como user.");
                ConexionEstatica.cerrarBD();
                response.sendRedirect("../vista/loginUser.jsp");
            }
            if (request.getParameter("comoAcceder").equals("admin")) {
                LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " ha accedido como admin.");
                LinkedList <Usuario> v = ConexionEstatica.obtenerUsuarios();
                session.setAttribute("listaUsuarios", v);
                ConexionEstatica.cerrarBD();
                response.sendRedirect("../vista/tablaUsuarios.jsp");
            }
            
        }

    }

    if (request.getParameter("botonLoginUser") != null) {
        String email = (String) session.getAttribute("email");
        String clave = (String) session.getAttribute("pwd");

        ConexionEstatica.nueva();
        Usuario n = ConexionEstatica.existeUsuario(email, clave);
        LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " ha pulsado el boton de login user.");

        if (request.getParameter("botonLoginUser").equals("Volver")) {
            LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " ha dado al boton volver del login user y se le redirige al index.");
            ConexionEstatica.cerrarBD();
            response.sendRedirect("../index.jsp");
        }
        if (request.getParameter("botonLoginUser").equals("CerrarSesion")) {
            session.invalidate();
            LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " ha acerrado sesion y se le redirige al index.");
            ConexionEstatica.cerrarBD();
            response.sendRedirect("../index.jsp");
        }
    }

    if (request.getParameter("botOlvidoPwd") != null) {
        String emil = (String) session.getAttribute("email");
        String clve = (String) session.getAttribute("pwd");
        ConexionEstatica.nueva();
        Usuario n = ConexionEstatica.existeUsuario(emil, clve);

        Email email = new Email();

        String de = "auxiliardaw2@gmail.com";
        String clave = "Chubaca20";
        String para = request.getParameter("email");
        String mensaje = "Cuerpo del mensaje";
        String asunto = "Contraseña olvidada";

        email.enviarCorreo(de, clave, para, mensaje, asunto);
        out.println("Correo enviado");

        LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " ha dado a enviar nueva contraseña.");
        ConexionEstatica.cerrarBD();

        response.sendRedirect("../index.jsp");
    }

    if (request.getParameter("bot1") != null) {
        String email = (String) session.getAttribute("email");
        String clave = (String) session.getAttribute("pwd");

        ConexionEstatica.nueva();
        Usuario n = ConexionEstatica.existeUsuario(email, clave);
        LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " ha accedido a la tabla de usuarios y pulsado bot1.");

        String cor = request.getParameter("nom");
        Usuario s = ConexionEstatica.existeUsu(cor);
        int t = Integer.parseInt(request.getParameter("edad"));
        if (request.getParameter("bot1").equals("X")) {
            ConexionEstatica.Borrar_Dato("usuario", cor);
            LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " ha borrado el usuario de " + s.getCorreo() + ".");
            LinkedList <Usuario> v = ConexionEstatica.obtenerUsuarios();
            session.setAttribute("listaUsuarios", v);
            ConexionEstatica.cerrarBD();
            response.sendRedirect("../vista/tablaUsuarios.jsp");
        }
        if (request.getParameter("bot1").equals("Editar")) {
            ConexionEstatica.Modificar_Dato_Edad("usuario", cor, t);
            LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " ha modificado la edad de " + s.getCorreo() + ".");
            LinkedList <Usuario> v = ConexionEstatica.obtenerUsuarios();
            session.setAttribute("listaUsuarios", v);
            ConexionEstatica.cerrarBD();
            response.sendRedirect("../vista/tablaUsuarios.jsp");
        }
        if (request.getParameter("bot1").equals("Admin")) {
            int op = Integer.parseInt(request.getParameter("admi"));
            if(op==0) {
                ConexionEstatica.Modificar_Dato_Opcion("usuario", cor, 1);
                LinkedList <Usuario> v = ConexionEstatica.obtenerUsuarios();
                session.setAttribute("listaUsuarios", v);
                LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " ha hecho que ahora " + s.getCorreo() + " sea usuario normal.");
            }else {
                ConexionEstatica.Modificar_Dato_Opcion("usuario", cor, 0);
                LinkedList <Usuario> v = ConexionEstatica.obtenerUsuarios();
                session.setAttribute("listaUsuarios", v);
                LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " ha hecho que ahora " + s.getCorreo() + " sea admin.");
            }
            ConexionEstatica.cerrarBD();
            response.sendRedirect("../vista/tablaUsuarios.jsp");
        }
    }

    if (request.getParameter("bot2") != null) {
        String email = (String) session.getAttribute("email");
        String clave = (String) session.getAttribute("pwd");

        ConexionEstatica.nueva();
        Usuario n = ConexionEstatica.existeUsuario(email, clave);
        LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " ha accedido a la tabla de usuarios y pulsado bot2.");
        if (request.getParameter("bot2").equals("+")) {
            LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " se ha redirigido a registrarse.");
            ConexionEstatica.cerrarBD();
            response.sendRedirect("../vista/registrarse.jsp");
        }
        if (request.getParameter("bot2").equals("volver")) {
            LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " se ha redirigido al login.");
            ConexionEstatica.cerrarBD();
            response.sendRedirect("../vista/login.jsp");
        }
    }

%>
