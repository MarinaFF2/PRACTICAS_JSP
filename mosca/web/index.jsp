<%-- 
    Document   : validar.jsp
    Created on : 26-sep-2019, 9:52:35
    Author     : daw207
--%>

<%@page import="clases.Tablero"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%
            if (request.getParameter("boton") == null) {
                session.setAttribute("intentos", 0);//guardar intentos
                Tablero t = new Tablero(); //iniciar Tablero
                out.print(t);
                session.setAttribute("tablero", t);//guardar tablero
            } else {
                if (!request.getParameter("boton").trim().isEmpty()) {
                    int intentos = (Integer) session.getAttribute("intentos");//recoger
                    Tablero t = (Tablero) session.getAttribute("tablero");//recoger

                    int golpe = Integer.parseInt(request.getParameter("boton"));
                    out.print(t);
                    out.print(golpe);
                    int sal = t.manotazo(golpe);
                    if(sal==0){
                        out.print("<br> ¡Has ganado!");  //has ganado
                        intentos=0;
                        out.print("<br> "+t);
                        %><a href="index.jsp">Volver a jugar</a>
                                <%
                    }else if(sal==1){
                        out.print("<br> ¡Casi le das!");
                        intentos++;
                        t.revotlotear();
                        out.print("<br> "+t);
                        out.print("<br> ¡La mosca ha revoloteado!");
                    }else if(sal==2){
                        out.print("<br> ¡No le has dado ni de lejos!");
                        intentos++;
                    }
                    if(intentos>=5){
                        out.print("<br> ¡Has perdido!");
                        intentos=0;
                    }
                    session.setAttribute("intentos", intentos);
                    session.setAttribute("tablero", t);
                }
               
            }
        %>
         <form name="formula" action="index.jsp" method="POST">
            <%
                for (int i = 0; i < 6; i++) {
                    out.print("<input type='submit' name='boton' value='" + i + "'>");
                }
            %>
        </form>
    </body>
</html>
