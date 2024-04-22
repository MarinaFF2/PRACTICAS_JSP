<%-- 
    Document   : index
    Created on : 19-sep-2019, 9:58:51
    Author     : Nathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adivina el número</title>
    </head>
    <body>
        <h3>Adivina el número</h3>

        <%

            if (request.getParameter("numero") != null) {
                int oculto = (Integer) session.getAttribute("azar");
                int num = Integer.parseInt(request.getParameter("numero"));
                int intntos = (Integer) session.getAttribute("intentos");
                if (oculto == num) {
                    out.println("Son iguales");
                    response.sendRedirect("victoria.jsp");
                } else {
                    out.println("Has fallado");
                    session.setAttribute("intentos", intntos + 1);
                    out.println(intntos);
                }
                String boton = request.getParameter("boton");
                if (intntos == 5 || boton.contentEquals("Me rindo")) {
                    response.sendRedirect("derrota.jsp");
                }
            } else {
                int n = (int) ((Math.random() * 100) + 1);
                int intentos = 1;
                session.setAttribute("azar", n);
                session.setAttribute("intentos", intentos);
                out.println(n);
            }

        %>

        <form name="formulario" action="index.jsp" method="POST">
            <input type="text" name="numero" value="0">
            <br>
            <br>
            <input type="submit" name="boton" value="Probar">
            <input type="submit" name="boton" value="Me rindo">
        </form>

    </body>
</html>
