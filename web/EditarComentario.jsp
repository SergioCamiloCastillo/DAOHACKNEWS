<%-- 
    Document   : EditarComentario
    Created on : 2/05/2019, 08:39:48 PM
    Author     : User
--%>


<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
    <link type="text/css" rel="stylesheet" href="estilo.css" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ComentariosController?action=editarComentario" method="post" >
		<table>
			<tr>
				<td><label>Id</label></td>
				<td><input type="text" name="editarId" value="<c:out value="${comen.id}"></c:out>" ></td>
			</tr>
			<tr>
				<td><label>Comentario</label></td>
				<td><input type="text" name="editarComentario" value='<c:out value="${comen.comentario}"></c:out>' ></td>
			</tr>
			<tr>
				<td><label>Fecha</label></td>
				<td><input type="text" name="editarFecha" value='<c:out value="${comen.fechaComentario}"></c:out>' ></td>
			</tr>
			
			
			
			
		</table>
	
		<input class="waves-effect waves-light btn" type="submit" name="registrar" value="Guardar"> 
	</form>
    </body>
</html>
