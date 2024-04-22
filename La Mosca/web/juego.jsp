<%-- 
    Document   : index
    Created on : Sep 20, 2019, 12:06:43 PM
    Author     : victor
--%>

<%@page import="datos.Tablero"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            if (request.getParameter("Boton") == null) {
                int size = Integer.parseInt(request.getParameter("n"));
                session.setAttribute("tamaño", size);
                Tablero t = new Tablero(size);
                t.iniciarTablero();
                t.colocarMosca();
                session.setAttribute("tablero", t);

        %>
        <h4>Di donde esta la mosca</h4>
        <form name="form0" action="juego.jsp" method="POST"> 
            <%                for (int i = 0; i < size; i++) {
            %>
            <input type="submit" name="Boton" value="<%=i%>"><br>
            <%
                }
            %>
            <input type="submit" name="Boton" value="Rendirse">
        </form>
        <% } else {
        int k=(Integer)(session.getAttribute("tamaño"));
            if (request.getParameter("Boton").equals("Rendirse")) {
                response.sendRedirect("perdido.html");
            } else {
                Tablero t = (Tablero) session.getAttribute("tablero");
                int x = t.comprobarMosca(Integer.parseInt(request.getParameter("Boton")));
                
                switch (x) {
                    case 0:
                        response.sendRedirect("ganado.jsp");
                        break;
                    case 1:
        %>
        <h4>Vaya casi le das!</h4>
        <h4>Di donde esta la mosca</h4>
        <form name="form0" action="juego.jsp" method="POST"> 
            <%
                for (int i = 0; i < (k); i++) {
            %>
            <input type="submit" name="Boton" value="<%=i%>"><br>
            <%
                }
            %>
            <input type="submit" name="Boton" value="Rendirse">
        </form>
        <%
                break;
            case 2:
        %>
        <h4>Ni cerca ha pasado</h4>
        <h4>Di donde esta la mosca</h4>
        <form name="form0" action="juego.jsp" method="POST"> 
            <%
                for (int i = 0; i < k; i++) {
            %>
            <input type="submit" name="Boton" value="<%=i%>"><br>
            <%
                }
            %>
            <input type="submit" name="Boton" value="Rendirse">
        </form>
        <%
                            break;
                    }
                }
            }
        %>

    </body>
</html>
