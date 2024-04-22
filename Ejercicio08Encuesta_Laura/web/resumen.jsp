<%-- 
    Document   : resumen
    Created on : 26-sep-2019, 11:05:51
    Author     : laumf
--%>

<%@page import="Package.Datos"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resumen</title>
        <link rel="stylesheet" type="text/css" href="newcss.css" media="screen" />
    </head>
    <body>
        <%
            if (session.getAttribute("lista") != null) {
                LinkedList<Datos> lista = (LinkedList<Datos>) session.getAttribute("lista");
                int sumaEdad = 0;
                int contMat[] = {0, 0, 0};
                int contAsig[] = {0, 0, 0, 0, 0, 0};
                for (int i = 0; i < lista.size(); i++) {
                    sumaEdad = sumaEdad + lista.get(i).getEdad();
                    for (int j = 0; j < contMat.length; j++) {
                        String curso = lista.get(i).getCurso(j);
                        if (curso != null) {                          
                            if (curso.equals("DAM")) {
                                contMat[0]++;
                            }
                            if (curso.equals("DAW")) {
                                contMat[1]++;
                            }
                            if (curso.equals("ASIR")) {
                                contMat[2]++;
                            }
                        }
                    }
                    for (int k = 0; k < contAsig.length; k++) {
                        String asig = lista.get(i).getAsignatura(k);
                        if (asig != null) {
                            if (asig.equals("Programacion")) {
                                contAsig[0]++;
                            }
                            if (asig.equals("Lenguajes de marcas")) {
                                contAsig[1]++;
                            }
                            if (asig.equals("Sistemas informaticos")) {
                                contAsig[2]++;
                            }
                            if (asig.equals("Bases de datos")) {
                                contAsig[3]++;
                            }
                            if (asig.equals("Ingles")) {
                                contAsig[4]++;
                            }
                            if (asig.equals("FOL")) {
                                contAsig[5]++;
                            }
                        }
                    }
                }
                int mediaEdad = sumaEdad / lista.size();
        %>
        <form name="resumen" action="index.jsp" method="post">
            <label for="edad">Media de edad </label><input type="text" name="edad" id="edad" value="<%out.print(mediaEdad);%>" disabled="disabled"/>
            <fieldset>
                <legend>Matrículas por curso</legend>
                <label for="dam">DAM </label><input type="text" name="curso" id="dam" value="<%out.print(contMat[0]);%>" disabled="disabled"/>
                <label for="daw">DAW </label><input type="text" name="curso" id="daw" value="<%out.print(contMat[1]);%>" disabled="disabled"/>
                <label for="asir">ASIR </label><input type="text" name="curso" id="asir" value="<%out.print(contMat[2]);%>" disabled="disabled"/>
            </fieldset>
            <fieldset>
                <legend>Matrículas por asignatura</legend>
                <input type="text" name="asignatura" id="prog" value="<%out.print(contAsig[0]);%>" disabled="disabled"/><label for="prog"> Programación</label><br>
                <input type="text" name="asignatura" id="leng" value="<%out.print(contAsig[1]);%>" disabled="disabled"/><label for="leng"> Lenguajes de marcas</label><br>
                <input type="text" name="asignatura" id="sist" value="<%out.print(contAsig[2]);%>" disabled="disabled"/><label for="sist"> Sistemas informáticos</label><br>
                <input type="text" name="asignatura" id="bbdd" value="<%out.print(contAsig[3]);%>" disabled="disabled"/><label for="bbdd"> Bases de datos</label><br>
                <input type="text" name="asignatura" id="ingl" value="<%out.print(contAsig[4]);%>" disabled="disabled"/><label for="ingl"> Inglés</label><br>
                <input type="text" name="asignatura" id="fol" value="<%out.print(contAsig[5]);%>" disabled="disabled"/><label for="fol"> FOL</label><br>
            </fieldset>
            <input type="submit" name="boton" id="volver" class="boton" value="Volver"/>
        </form>
        <%}%>
    </body>
</html>
