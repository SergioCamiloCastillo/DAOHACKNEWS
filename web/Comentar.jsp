<%-- 
    Document   : Comentar
    Created on : 2/05/2019, 04:26:34 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
    <link type="text/css" rel="stylesheet" href="estilo.css" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Comentario</h1>
        <form action="ComentariosController?action=registrarComentario" method="post">


            Comentarios	
            
            <textarea name="comentario" id="comentario" rows="10" cols="50"></textarea>


            <br>
            <input class="waves-effect waves-light btn" type="submit" value="Agregar Comentario" name="agregar">	


        </form>
    </body>
</html>
