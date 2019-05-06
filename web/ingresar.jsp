<%-- 
    Document   : ingresar
    Created on : 3/05/2019, 10:41:43 AM
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
        <h1>Ingresar al sistema</h1>
        <form action='UsuarioController?action=ingresarSistema' method="POST">
            Usuario: 
            <input type='text' name='usuario' id='usuario'></br></br>
            Clave: 
            <input type='text' name='clave' id='clave'></br></br>
            <input type="submit" name="registrar" value="Ingresar"> </br></br>

        </form>
        <a href="RegistrarUsuario.jsp">Registrarse</a>
    </body>
</html>
