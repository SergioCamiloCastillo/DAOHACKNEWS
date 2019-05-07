<%@page import="Dao.UsuarioDAOImpl"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
    <link rel="stylesheet" href="css/estilos.css">

<%

    HttpSession ses = request.getSession();
    String usuario = "";
    int nivel = 0;

    if (ses.getAttribute("usuario") != null && ses != null && ses.getAttribute("nivel") != null) {
        usuario = ses.getAttribute("usuario").toString();
        nivel = Integer.parseInt(ses.getAttribute("nivel").toString());

        if (nivel == 1) {
            response.sendRedirect("vistaAdministrador.jsp");
        }
    } else if (nivel == 2) {
        response.sendRedirect("vistaUsuario.jsp");
    }


%>







<!DOCTYPE html>
<!--
CODIGO ELABORADO POR: Ing. Héctor Edmundo González Magaña, ing.edmundogm@gmail.com 
EMPRESA: Itca-Fepade, Santa Tecla, La Libertar, El Salvador, CA
ESTE CODIGO DEBE USARSE SIN FINES LUCRATIVOS Y HACER REFERENCIA AL AUTOR
-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vista Pesona</title>
        
    </head>

  

    <body>

        <pre>Bienvenido <%= usuario%>  |  <a href="index.jsp?cerrar=true">Cerrar Sesion</a></pre>
        <hr>



    <center>
        <!-- EL FORMULARIO PARA INGRESO DE DADTOS -->
        <h2>Formulario de Registro</h2>
        <tr>
        <table border="1" width="50%" align="center">

            <tr>
                <td align="center"><a href="NoticiaController?action=nuevo">Registrar Noticia</a></td>			
            </tr>
            <tr>
                <td align="center"><a href="NoticiaController?action=mostrar">Mostrar Noticia</a></td>
            </tr>
            <tr>
                <td align="center"><a href="ComentariosController?action=mostrarComentarios">Mostrar Comentarios</a></td>
            </tr>
            <tr>
                <td align="center"><a href="PreguntaController?action=preguntar">Registrar Preguntas</a></td>
            </tr>
            <tr>
                <td align="center"><a href="PreguntaController?action=mostrarPreguntas">Mostrar Preguntas</a></td>
            </tr>

        </table>
        </br></br>
        <form action="NoticiaController?action=buscar" method="post">

            Buscar Noticia: <input type="text" name="buscar">

            <input type="submit"  value="Buscar"> 

        </form>
        <hr>  
        
    </center>     
</body>

</html>

