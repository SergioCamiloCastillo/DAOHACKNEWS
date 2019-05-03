<%-- 
    Document   : Comentar
    Created on : 2/05/2019, 04:26:34 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Comentario</h1>
        <form action="ComentariosController?action=registrarComentario" method="post">


            Comentarios	
            <input type="text" name="txtid">
            <textarea name="comentario" id="comentario" rows="10" cols="50"></textarea>


            <br>
            <input type="submit" value="Agregar Comentario" name="agregar">	


        </form>
    </body>
</html>
