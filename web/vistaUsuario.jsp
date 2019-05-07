<%@page import="Dao.UsuarioDAOImpl"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>

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
        <!--ESTE JAVASCRIPT ES PARA CARGAR DE LA TABLA A LOS TEXTOS DEL FORMULARIO -->
        <script lang="JavaScript">
            function cargar(id, nombres, apellidos, edad) {
                document.formPersona.txtId.value = id;
                document.formPersona.txtNombres.value = nombres;
                document.formPersona.txtApellidos.value = apellidos;
                document.formPersona.txtEdad.value = edad;
            }
        </script>
    </head>

    <%         //DAOPersona dao = new DAOPersona();
         //List<Persona> datos= new ArrayList();         
%>

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
        <form  name="formPersona" method="POST" action="SERVPersona">

            Buscar Noticia: <input type="text" name="txtCriterio">
           
            <input type="submit" name="btnFiltrar" value="Filtrar"> 
           
        </form>
        <hr>  

    </center>     
</body>

</html>

