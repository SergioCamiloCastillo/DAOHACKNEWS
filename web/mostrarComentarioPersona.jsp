<%-- 
    Document   : MostrarComentarios
    Created on : 2/05/2019, 07:57:26 PM
    Author     : User
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
    <link rel="stylesheet" href="css/estilos.css">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>Lista Noticias</h1>
        <table>
            <tr>
                <td><a href="ComentariosController?action=indexx" >Ir al menú</a> </td>
            </tr>
        </table>

        <table border="1" width="100%">
            <tr>
                <td><strong>ID</strong> </td>
                <td><strong>COMENTARIO</strong> </td>
                <td><strong>FECHA COMENTARIO</strong> </td>

                <td colspan=2></td>
            </tr>
            <c:forEach var="comen" items="${comentario}">
                <tr>
                    <td><c:out value="${comen.id}"/></td>
                    <td><c:out value="${comen.comentario}"/></td>
                    <td><c:out value="${comen.fechaComentario}"/></td>
                    

                </tr>
            </c:forEach>
        </table>
    </body>
</html>
