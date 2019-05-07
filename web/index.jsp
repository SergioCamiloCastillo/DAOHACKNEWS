<%@page import="Modelo.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>HackNews</title>
    </head>
    <body>
        <h1>HackNews</h1>
        <table border="1" width="50%" align="center">
            <tr>
                <td align="center"><a href="ingresar.jsp">Login</a></td>			
            </tr>

            <tr>
                <td align="center"><a href="NoticiaController?action=mostrarNoticiaPersona">Mostrar Noticia</a></td>
            </tr>
            <tr>
                <td align="center"><a href="ComentariosController?action=mostrarComentarios">Mostrar Comentarios</a></td>
            </tr>

            <tr>
                <td align="center"><a href="PreguntaController?action=mostrarPreguntas">Mostrar Preguntas</a></td>
            </tr>

        </table>

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