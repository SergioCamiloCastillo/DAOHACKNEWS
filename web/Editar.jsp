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
<title>Actualizar Noticia</title>
</head>
<body>
<h1>Actualizar Noticia</h1>
	<form action="NoticiaController?action=editar" method="post" >
		<table>
			<tr>
				<td><label>Id</label></td>
				<td><input type="text" name="txttId" value="<c:out value="${noticia.id}"></c:out>" ></td>
			</tr>
			<tr>
				<td><label>Titulo</label></td>
				<td><input type="text" name="txttTitulo" value='<c:out value="${noticia.titulo}"></c:out>' ></td>
			</tr>
			<tr>
				<td><label>URL</label></td>
				<td><input type="text" name="txttUrl" value='<c:out value="${noticia.url}"></c:out>' ></td>
			</tr>
			<tr>
				<td><label>Texto</label></td>
				<td><input type="text" name="txttTexto" value='<c:out value="${noticia.texto}"></c:out>' ></td>
			</tr>
			
			
			
		</table>
	
		<input class="waves-effect waves-light btn" type="submit" name="registrar" value="Guardar"> 
	</form>

</body>
</html>