<%-- 
    Document   : resultado
    Created on : 17-sep-2019, 11:07:37
    Author     : carlox
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tablas de Multiplicar Resultados</h1>
        <% String numero = request.getParameter("n"); 
                int n= Integer.parseInt(numero);%>
        
        <form name="resultado" action="index.html" method="post">
            Tabla del <%out.println(n);%><br/>
            <%
                String numeros[] = request.getParameterValues("resultado");
                for (int i = 0; i < 11; i++) {
                    out.println(n + " * " + i + " = ");
                    int resultado = n * i;
                    if (Integer.parseInt(numeros[i]) == resultado) {
            %>
            <input style="background-color: green" type="text" name="resultado" value="<%
                        out.println(numeros[i]);%>"><br/><%
                          } 
                    else {
            %>
                    <input style="background-color: red" type="text" name="resultado" value="<%
                        out.println(numeros[i]);%>"><br/><%
                       }
                   }
            %>
            <input type="submit" name="Reiniciar" value="Reiniciar y elegir otro numero">
        </form>
    </body>
</html>
