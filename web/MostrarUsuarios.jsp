<%-- 
    Document   : MostrarUsuarios
    Created on : 6/05/2019, 10:55:26 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body>
         <h1>Lista Usuarios</h1>
        <table>
            <tr>
                <td><a href="PreguntaController?action=index" >Ir al menú</a> </td>
            </tr>
        </table>

        <table border="1" width="100%">
            <tr>
                <td><strong>Usuario</strong> </td>
               
                <td><strong>Contraseña</strong> </td>

                <td colspan=2></td>
            </tr>
            <c:forEach var="usu" items="${usuario}">
                <tr>
                    <td><c:out value="${usu.usuario}"/></td>
                    
                    <td><c:out value="${usu.contra}"/></td>
                    
                    <td><a href="vistaAdministrador.jsp<c:out value="${usu}"/>">Eliminar</a> </td>

                </tr>
            </c:forEach>
        </table>
    </body>
</html>
