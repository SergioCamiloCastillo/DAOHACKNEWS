<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
    <link rel="stylesheet" href="css/estilos.css">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrar Noticia</title>
</head>
<body>
	<h1>Registrar Noticia</h1>
	<form action="NoticiaController?action=register" method="post">
		<table border="1" align="center">
                    <tr>
			<td>Id:</a></td>		
			<td><input type="text" name="txtId"/></td>	
		</tr>
		<tr>
			<td>Titulo:</a></td>		
			<td><input type="text" name="txtTitulo"/></td>	
		</tr>
		<tr>
			<td>URL:</a></td>		
			<td><input type="text" name="txtUrl"/></td>	
		</tr>
		<tr>
			<td>Texto:</a></td>		
			<td><input type="text" name="txtTexto"/></td>	
		</tr>
		
			
		
	</table>
	<br>
	<table border="0" align="center">
		<tr>
		<td><input type="submit" value="Agregar" name="agregar"></td>	
		</tr>
	
	</form>
</body>
</html>