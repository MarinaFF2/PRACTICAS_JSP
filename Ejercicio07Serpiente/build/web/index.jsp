<%-- 
    Document   : index2
    Created on : 26-sep-2019, 9:52:40
    Author     : laumf
--%>

<%@page import="Serpiente.Serpiente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ha nacido una serpiente :D</h1>
        <%
            Serpiente serp = new Serpiente();
            while (serp.isViva()) {
                int porcent = (int) (Math.random() * 101);
                if (serp.getEdad() < 10) {
                    if (porcent <= 80) {
                        serp.crecer();
                    } else {
                        serp.mudarPiel();
                    }
                }
                if (serp.getEdad() >= 10) {
                    if (porcent <= 90) {
                        serp.decrecer();
                    } else {
                        serp.mudarPiel();
                    }
                }
                out.flush();
                Thread.sleep(1000);
                String color = "";
                int longitud = serp.getLength();
                for (int i = 0; i < longitud; i++) {
                    if (serp.getAnilla(i).equals("r")) {
                        color = "red";
                    }
                    if (serp.getAnilla(i).equals("n")) {
                        color = "black";
                    }
                    if (serp.getAnilla(i).equals("a")) {
                        color = "yellow";
                    }
        %>
        <input type="text" name="anilla" disabled="disabled" style="border:none;background-color:<%out.print(color);%>;"/> 
        <%
            }
        %>
        <br><br>
        <%
            }
            if (!serp.isViva()) {
        %><h1>La serpiente ha muerto :(</h1><%
            }
        %>
    </body>
</html>
