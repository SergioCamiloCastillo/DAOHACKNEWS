<%-- 
    Document   : MostrarPreguntas
    Created on : 2/05/2019, 11:06:58 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Lista Preguntas</h1>
        <table>
            <tr>
                <td><a href="PreguntaController?action=index" >Ir al menú</a> </td>
            </tr>
        </table>

        <table border="1" width="100%">
            <tr>
                <td><strong>ID</strong> </td>
                <td><strong>PREGUNTA</strong> </td>
                <td><strong>FECHA PREGUNTA</strong> </td>

                <td colspan=2></td>
            </tr>
            <c:forEach var="preg" items="${pregunta}">
                <tr>
                    <td><c:out value="${preg.id}"/></td>
                    <td><c:out value="${preg.pregunta}"/></td>
                    <td><c:out value="${preg.fecha}"/></td>
                    
                    <td><a href="PreguntaController?action=showedit&id=<c:out value="${preg.id}"/>">Editar</a></td>
                    <td><a href="PreguntaController?action=eliminar&id=<c:out value="${preg.id}"/>">Eliminar</a> </td>

                </tr>
            </c:forEach>
        </table>
    </body>
</html>
