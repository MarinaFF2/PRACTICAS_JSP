<%-- 
    Document   : controladorJuego
    Created on : 11-oct-2019, 10:38:25
    Author     : marina flores
--%>

<%@page import="clases.Usuario"%>
<%@page import="clases.ConexionEstatica"%>
<%@page import="clases.LoginFichero"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int numUsu = 0;
    session.setAttribute("intento", 0); //pasar atributo
    session.setAttribute("numAdvi", (int) ((Math.random() * 10) + 1));//pasar atributo
    
    if (request.getParameter("botonLoginUser") != null) {
        String email = (String) session.getAttribute("email");
        String clave = (String) session.getAttribute("pwd");

        ConexionEstatica.nueva();
        Usuario n = ConexionEstatica.existeUsuario(email, clave);
        LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " ha pulsado el boton volver del juego.");

        if (request.getParameter("botonLoginUser").equals("Volver")) {
            LoginFichero.escribirLogin("El usuario " + n.getCorreo() + " ha dado al boton volver del login user y se le redirige al index.");
            ConexionEstatica.cerrarBD();
            response.sendRedirect("../index.jsp");
        }
        
    }
    
    
        if (!request.getParameter("numUsu").trim().isEmpty()) {

            numUsu = Integer.parseInt(request.getParameter("numUsu"));
            int intentos = (Integer) session.getAttribute("intento");
            int numAdvi = (Integer) session.getAttribute("numAdvi");

            out.print("numAdvi");

            if (numUsu == numAdvi) {
                out.print("Intentos: " + intentos + "<br>");
                out.print("¡Has ganado!");
                out.print("<a href='../adivinarNumero/adiviNumero.jsp'>Volver</a>");
            } else if (numUsu < numAdvi) {
                out.print("Intentos: " + intentos + "<br>");
                out.print("Es menor que " + numUsu + "<br>");
                intentos++;
                session.setAttribute("intento", (intentos));
                out.print("<a href='../adivinarNumero/adiviNumero.jsp'>Volver</a>");
            } else {
                out.print("Intentos: " + intentos + "<br>");
                out.print("Es mayor que " + numUsu + "<br>");
                intentos++;
                session.setAttribute("intento", (intentos));
                out.print("<a href='../adivinarNumero/adiviNumero.jsp'>Volver</a>");
            }

            if (intentos >= 5) {
                out.print("¡Has perdido!");
                out.print("<a href='../adivinarNumero/adiviNumero.jsp'>Volver</a>");
            }
        }

%>
