<%-- 
    Document   : juego
    Created on : 19-sep-2019, 9:50:56
    Author     : laumf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adivina el número</title>
        <link rel="stylesheet" type="text/css" href="bonico.css" media="screen" />
    </head>
    <body>
        <h1>Adivina el número</h1>

        <form name="juego" action="index.jsp" method="post">
            <label for="numero">Dime un número del 1 al 10</label>
            <input name="numero" type="text" value=""/>
            <input name="boton" class="boton" type="submit" value="Probar"/>
            <input name="boton" class="boton" type="submit" value="Rendirse"/>
        </form>
        <%
            int numoculto;
            int intentos;
            if (request.getParameter("numero") == null) {
                numoculto = (int) (Math.random() * 10) + 1;
                session.setAttribute("numsesion", numoculto);
                intentos = 5;
                session.setAttribute("intentos", intentos);
            } else {
                String bot = request.getParameter("boton");
                intentos = (Integer) session.getAttribute("intentos");
                if (bot.equals("Probar") && intentos > 0) {
                    numoculto = (Integer) session.getAttribute("numsesion");
                    int nummio = Integer.parseInt(request.getParameter("numero"));
                    if (numoculto == nummio) {
                        response.sendRedirect("ganar.jsp");
                    } else {
                        intentos--;
                        session.setAttribute("intentos", intentos);
                        if (numoculto < nummio) {
                            out.println("<p>No has acertado. El número es menor.");
                        }
                        if (numoculto > nummio) {
                            out.println("<p>No has acertado. El número es mayor.");
                        }
                        out.println("Te quedan " + session.getAttribute("intentos") + " intentos.</p>");
                    }
                }
                if (bot.equals("Rendirse") || intentos == 0) {
                    response.sendRedirect("perder.jsp");
                }
            }
        %>
    </body>
</html>
