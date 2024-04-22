<%-- 
    Document   : validar
    Created on : 23-sep-2019, 19:07:32
    Author     : 5amar
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
            String result[] = request.getParameterValues("result");
            for (int j = 0; j < result.length; j++) {
                if((4*j) == Integer.parseInt(result[j]) && (result[j]!=null)) {
                    out.print("<p style='color:green'>"+Integer.parseInt(result[j])+"</p>");
                }else{
                    out.print("<p style='color:red'>"+Integer.parseInt(result[j])+"</p>");
                }
            }
        %>
    </body>
</html>
