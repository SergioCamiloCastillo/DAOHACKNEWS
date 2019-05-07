
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
   <link type="text/css" rel="stylesheet" href="estilo.css" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Administrar Noticias</title>
    </head>
    <body>
        <h1>Lista Noticias</h1>
        <table>
            <tr>
                <td><a href="NoticiaController?action=index" >Ir al menú</a> </td>
            </tr>
        </table>

        <table border="1" width="100%">
            <thead>
            <tr>
                <td><strong>ID</strong> </td>
                <td><strong>TITULO</strong> </td>
                <td><strong>URL</strong> </td>
                <td><strong>TEXTO</strong> </td>
                <td><strong>FECHA</strong></td>

                <td colspan=2></td>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="noticias" items="${lista}">
                <tr>
                    <td><c:out value="${noticias.id}"/></td>
                    <td><c:out value="${noticias.titulo}"/></td>
                    <td><c:out value="${noticias.texto}"/></td>
                    <td><c:out value="${noticias.url}"/></td>
                    <td><c:out value="${noticias.fecha}"/></td>
                    <td><a href="NoticiaController?action=showedit&id=<c:out value="${noticias.id}" />">Editar</a></td>
                    <td><a href="NoticiaController?action=eliminar&id=<c:out value="${noticias.id}"/>">Eliminar</a> </td>
                    <td><a href="ComentariosController?action=comentar&id=<c:out value="${noticias.id}"/>">Comentar</a> </td>				

                </tr>
            </c:forEach>
            </tbody>
        </table>

    </body>
</html>