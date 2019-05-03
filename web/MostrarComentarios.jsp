<%-- 
    Document   : MostrarComentarios
    Created on : 2/05/2019, 07:57:26 PM
    Author     : User
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>Lista Noticias</h1>
        <table>
            <tr>
                <td><a href="ComentariosController?action=index" >Ir al menú</a> </td>
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
                    <td><a href="ComentariosController?action=showedit&id=<c:out value="${comen.id}" />">Editar</a></td>
                    <td><a href="ComentariosController?action=eliminar&id=<c:out value="${comen.id}"/>">Eliminar</a> </td>

                </tr>
            </c:forEach>
        </table>
    </body>
</html>
