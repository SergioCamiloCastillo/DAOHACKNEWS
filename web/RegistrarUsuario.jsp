<%-- 
    Document   : RegistrarUsuario
    Created on : 3/05/2019, 11:50:32 AM
    Author     : User
--%>

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
        <h1>Registrarse en el sistema</h1>
        <form action='UsuarioController?action=registrarUsuario' method="POST">
            Usuario: 
            <input class="autocomplete" type='text' name='txtusuario' id='txtusuario'></br></br>
            Clave: 
            <input class="autocomplete" type='password' name='txtclave' id='txtclave'></br></br>
            <input class="waves-effect waves-light btn" type="submit" name="registrar" value="Registrar"> </br></br>

        </form>
    </body>
</html>
