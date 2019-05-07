<%@page import="Modelo.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
   <link type="text/css" rel="stylesheet" href="estilo.css" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>HackNews</title>
    </head>
    <body>
        <h1>HackNews</h1>
         <div class="collection">
    <a href="ingresar.jsp" class="collection-item"><span class="badge"> </span>Login</a>
    <a href="NoticiaController?action=mostrarNoticiaPersona" class="collection-item"><span class="badge"></span>Mostrar Noticias</a>
    <a href="ComentariosController?action=mostrarComentariosPersona" class="collection-item">Mostrar Comentarios</a>
    <a href="PreguntaController?action=mostrarPreguntasPersona" class="collection-item"><span class="badge"></span>Mostrar Preguntas</a>
  </div>
        

        <%
            HttpSession sesion = request.getSession();

            List<Usuario> datos = new ArrayList<Usuario>();
            if (request.getAttribute("fail") != null) {
                out.print("<script>alert('El usuario y/o la contraseña no se encuentran en la base de datos');</script>   ");
            }
            if (request.getAttribute("datos") != null) {
                datos = (List<Usuario>) request.getAttribute("datos");
                String usuario = "";
                int nivel = 0;
                for (Usuario u : datos) {
                    usuario = u.getUsuario();
                    nivel = u.getNivel();
                }
                sesion.setAttribute("usuario", usuario);
                sesion.setAttribute("nivel", nivel);
                response.sendRedirect("vistaUsuario.jsp");
            }
            if (request.getParameter("cerrar") != null) {
                sesion.invalidate();
                response.sendRedirect("index.jsp");
            }

        %>
    </body>
</html>