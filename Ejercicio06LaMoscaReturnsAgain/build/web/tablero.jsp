<%-- 
    Document   : tablero
    Created on : 20-sep-2019, 12:37:59
    Author     : laumf
--%>

<%@page import="Tablero.Tablero"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>La Mosca Returns (again)</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bonico.css" media="screen" />
    </head>
    <body>
        <h1>La Mosca Returns (again)</h1>
        <%
            int intentos;
            if (session.getAttribute("tablero") == null) {
                String numcas = request.getParameter("casillas");
                Tablero tab = new Tablero(Integer.parseInt(numcas));
                tab.iniciarTablero();
                tab.colocarMosca();
                session.setAttribute("tablero", tab);
                intentos = 5;
                session.setAttribute("intentos", intentos);
            } else {
                Tablero tab = (Tablero) session.getAttribute("tablero");
                intentos = (Integer) session.getAttribute("intentos");
                if (request.getParameter("boton") != null) {
                    int t = Integer.parseInt(request.getParameter("boton"));
                    int qhp = tab.resultado(t);
                    switch (qhp) {
                        case 0:
                            out.print("<p>Ni te has acercado. Te quedan " + session.getAttribute("intentos") + " intentos.</p>");
                            intentos--;
                            session.setAttribute("intentos", intentos);
                            break;
                        case 1:
                            tab.revolotear();
                            out.print("<p>¡Casi le das! La mosca se ha asustado y ha revoloteado. Te quedan " + session.getAttribute("intentos") + " intentos.</p>");                         
                            intentos--;
                            session.setAttribute("intentos", intentos);
                            break;
                        case 2:
                            response.sendRedirect("ganar.jsp");
                    }
                }
                if (intentos == 0) {
                    response.sendRedirect("perder.jsp");
                }
            }
        %>
        <p>¿Dónde quieres dar el manotazo?</p>  
        <form name="juego" action="tablero.jsp" method="post">
            <%
                Tablero tab = (Tablero) session.getAttribute("tablero");
                int casillas = tab.getCasillas();
                for (int i = 0; i < casillas; i++) {
            %>
            <input name="boton" class="boton" type="submit" value="<%out.print(i);%>"/>
            <%
                }
            %>
        </form>
    </body>
</html>
