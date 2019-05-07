<%-- 
    Document   : ingresar
    Created on : 3/05/2019, 10:41:43 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
    <link rel="stylesheet" href="css/estilos.css">
    <link type="text/css" rel="stylesheet" href="estilo.css" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ingresar al sistema</h1>
        <form action='UsuarioController?action=ingresarSistema' method="POST">
            Usuario: 
            <input class="autocomplete" type='text' name='usuario' id='usuario'></br></br>
            Clave: 
            <input class="autocomplete" type='password' name='clave' id='clave'></br></br>
            <input class="waves-effect waves-light btn" type="submit" name="registrar" value="Ingresar"> </br></br>

        </form>
        <a class="waves-effect waves-light btn" href="RegistrarUsuario.jsp">Registrarse</a>
    </body>
</html>
