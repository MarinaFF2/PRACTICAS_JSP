<%-- 
    Document   : index
    Created on : 23-sep-2019, 18:06:04
    Author     : carlox
--%>

<%@page import="datos.Serpiente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Serpiente serpiente = new Serpiente();
            int cont = 0;
            boolean muerta = false;
            do {
                String s[] = serpiente.recorrerVector();
                for (int i = 0; i < s.length; i++) {
        %>
        <input type="text" style='background-color:<%out.print(s[i]);%>' size="10px">
        <%
            }
        %>
        <br/>
        <%
                serpiente.crecer();
                serpiente.setEdad(serpiente.getEdad() + 1);
                cont++;
                out.flush();
                Thread.sleep(1000);
            } while (serpiente.getEdad() < 10);
             serpiente.decrecer();
            do {
                serpiente.decrecer();
                String s[] = serpiente.recorrerVector();
                for (int i = 0; i < s.length; i++) {
        %>
        <input type="text" style='background-color:<%out.print(s[i]);%>' size="10px">
        <%
            }
            serpiente.setEdad(serpiente.getEdad() + 1);
            cont++;
            out.flush();
            Thread.sleep(1000);

        %>
        <br/>
        <%                if (cont < 0) {
                    muerta = true;
                }
            } while (!muerta);
        %>
    </body>
</html>
