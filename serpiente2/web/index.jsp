<%-- 
    Document   : index
    Created on : 26-sep-2019, 9:11:51
    Author     : daw203
--%>

<%@page import="Serpiente.Serpiente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Serpiente</title>
    </head>
    <body>
        <h1>Serpiente</h1>

        <h3>Vamos a simular la vida de una serpiente.</h3>

        <% Serpiente s = new Serpiente();

            while (s.isViva()) {
                int porcentaje = (int) ((Math.random() * 100) + 1);

                if (s.getEdad() <= 10) {
                    if (porcentaje <= 80) {
                        s.crece();
                        out.println(s.toString());
                    } else {
                        s.mudar();
                        out.println(s.toString());
                    }
                }

                if (s.getEdad() > 10) {
                    if (porcentaje <= 90) {
                        s.decrece();
                        out.println(s.toString());
                    } else {
                        s.mudar();
                        out.println(s.toString());
                    }
                }

                if (porcentaje < 10) {
                    s.morir();
                    out.println("<br> La serpiente ha muerto a los " + s.getEdad() + " años.");
                }
                
                Thread.sleep (500);
                out.println("</br>");
                out.flush();
            }

        %>



    </body>
</html>