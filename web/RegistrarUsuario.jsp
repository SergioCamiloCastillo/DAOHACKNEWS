<%-- 
    Document   : RegistrarUsuario
    Created on : 3/05/2019, 11:50:32 AM
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
        <h1>Registrarse en el sistema</h1>
        <form action='UsuarioController?action=registrarUsuario' method="POST">
            Usuario: 
            <input type='text' name='usuario' id='usuario'></br></br>
            Clave: 
            <input type='text' name='clave' id='usuario'></br></br>
            <input type="submit" name="registrar" value="Ingresar"> </br></br>

        </form>
    </body>
</html>
