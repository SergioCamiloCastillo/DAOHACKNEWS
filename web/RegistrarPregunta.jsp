

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
    <link type="text/css" rel="stylesheet" href="estilo.css" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registrar Pregunta</h1>
	<form action="PreguntaController?action=registrarPregunta" method="post">
		<table border="1" align="center">
                    <tr>
			<td>Id:</a></td>		
			<td><input type="text" name="id"/></td>	
		</tr>
		<tr>
			<td>Pregunta:</a></td>		
			<td><input type="text" name="pregunta"/></td>	
		</tr>
		
		
			
		
	</table>
	<br>
	<table border="0" align="center">
		<tr>
		<td><input class="waves-effect waves-light btn" type="submit" value="Agregar" name="agregar"></td>	
		</tr>
	
	</form>
    </body>
</html>
