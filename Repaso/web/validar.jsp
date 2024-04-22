<%-- 
    Document   : validar
    Created on : 26-sep-2019, 9:00:48
    Author     : fernando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int n = Integer.parseInt(request.getParameter("edad"));
            out.println(n);
            session.setAttribute("sesEdad", n);
            String valores[] = request.getParameterValues("caja");
            for (int i = 0; i < valores.length; i++) {
                    out.print(valores[i]+"<br>");
                }
            String bot = request.getParameter("boton");
            if (bot.equals("Aceptar")){
                out.print("Has pulsado Aceptar");
                response.sendRedirect("otra.jsp");
                out.print("Llego aquí???");
            }
            else {
                out.print("Has pulsado Cancelar");
                response.sendRedirect("index.html");
            }
            %>
            <a href="otra.jsp">Ir a otra</a>
            <form name="formu" action="otra.jsp" method="POST">
                <input type="submit" name="boton" value="Aceptar">
            </form>
    </body>
</html>
