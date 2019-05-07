<%-- 
    Document   : EditarPregunta
    Created on : 3/05/2019, 09:04:39 AM
    Author     : User
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
    <link rel="stylesheet" href="css/estilos.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="PreguntaController?action=editarPregunta" method="post" >
            <table>
                <tr>
                    <td><label>Id</label></td>
                    <td><input type="text" name="editarId" value='<c:out value="${preg.id}"></c:out>' ></td>

                    </tr>
                    <tr>
                        <td><label>Pregunta</label></td>
                        <td><input type="text" name="editarPregunta" value='<c:out value="${preg.pregunta}"></c:out>' ></td>
                    </tr>
                    <tr>
                        <td><label>Fecha</label></td>
                        <td><input type="text" name="editarFecha" value='<c:out value="${preg.fecha}"></c:out>' ></td>
                </tr>






            </table>

            <input type="submit" name="registrar" value="Guardar"> 
        </form>
    </body>
</html>
