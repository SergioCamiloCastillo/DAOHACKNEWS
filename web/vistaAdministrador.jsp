<%-- 
    Document   : vistaAdministrador
    Created on : 6/05/2019, 10:25:26 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
    <link type="text/css" rel="stylesheet" href="estilo.css" />
<% 

HttpSession ses = request.getSession();

    String us=ses.getAttribute("usuario").toString();
    


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <pre>Bienvenido <%= us %>  |  <a href="index.jsp?cerrar=true">Cerrar Sesion</a></pre>
        <hr>
        
        
        
    <center>
        <!-- EL FORMULARIO PARA INGRESO DE DADTOS -->
        <h2>Formulario de Registro</h2>
        <tr>
                <table border="1" width="50%" align="center">
            
            
            <tr>
                <td align="center"><a href="NoticiaController?action=mostrar">Mostrar Noticia</a></td>
            </tr>
            <tr>
                <td align="center"><a href="ComentariosController?action=mostrarComentarios">Mostrar Comentarios</a></td>
            </tr>
          
            <tr>
                <td align="center"><a href="PreguntaController?action=mostrarPreguntas">Mostrar Preguntas</a></td>
            </tr>
             <tr>
                <td align="center"><a href="UsuarioController?action=mostrarUsuarios">Mostrar Usuarios</a></td>
            </tr>

        </table>
        <form  name="formPersona" method="POST" action="SERVPersona">
            
            Buscar: <input type="text" name="txtCriterio">
           
            <input type="submit" name="btnFiltrar" value="Filtrar"> 
             
        </form>
    <hr>  
       
    </center>   
    </body>
</html>
