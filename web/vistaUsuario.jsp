<%@page import="Dao.UsuarioDAOImpl"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>

<% 

HttpSession ses = request.getSession();
String usuario="";
int nivel=0;

if(ses.getAttribute("usuario")!=null && ses !=null && ses.getAttribute("nivel")!=null){
    usuario = ses.getAttribute("usuario").toString();
    nivel = Integer.parseInt(ses.getAttribute("nivel").toString()); 
    
    if(nivel!=1){
        response.sendRedirect("index.jsp");
    }  
}else{
    response.sendRedirect("index.jsp");
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
            function cargar(id, nombres, apellidos, edad){
                document.formPersona.txtId.value=id;
                document.formPersona.txtNombres.value=nombres;
                document.formPersona.txtApellidos.value=apellidos;
                document.formPersona.txtEdad.value=edad;
            }
        </script>
    </head>
    
     <%
        //DAOPersona dao = new DAOPersona();
        //List<Persona> datos= new ArrayList();         
    %>
     
    <body>
        
        <pre>Bienvenido <%= usuario %> | nivel Administrador |  <a href="index.jsp?cerrar=true">Cerrar Sesion</a></pre>
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
        <form  name="formPersona" method="POST" action="SERVPersona">
            
            Buscar: <input type="text" name="txtCriterio">
            En base a:<input type="text" name="txtCampo" placeholder="podria ser un select jeje">
            <input type="submit" name="btnFiltrar" value="Filtrar"> 
             <input type="submit" name="btnReiniciar" value="Reiniciar"> 
        </form>
    <hr>  
        <!-- DISEÑAMOS LA TABLA EN HTML Y LE METEMOS CODIGO JSP -->
        <table border="1px">
             <!-- PRIMERO LOS ENCABEZADOS-->
            <tr>
            <td>ID </td>  <td>NOMBRES</td>  <td>APELLIDOS </td>  <td> EDAD</td><td> ACCION</td>
            </tr>
            <!-- AHORA TODO EL CONTENIDO DE LA TABLA-->
        <% 
          //ESTOS IF SON PAR VER SI SE RECIBEN ATRIBUTOS DEL SERVLET
        //SE ESPERA EL ATRIBUTO FILTRO SI ACASO SE HA FILTRADO
        //SE ESPERA EL ATRIBUTO REINICIO SI ACASO DE REINICIO EL FILTRO
        //DE NO RECIBIR ATRIBUTOS, SOLO CARGA LA TABLA(LLAMA A CONSULTAR)
          if(request.getAttribute("filtro")!=null){
              //datos = (List<Persona>) request.getAttribute("filtro");
          }else  if(request.getAttribute("reinicio")!=null){
                  //datos = dao.consultar();
          }else{
              //datos = dao.consultar();
          }
          
          //ESTE BUCLE ES PARA RECORRER EL RESULTADO DE LLAMAR A CONSULTAR          
            //for(Persona p : datos){
       %>   
             
       <% 
           // }   
       %>
        </table>
    </center>     
    </body>
<!-- que chivo va vo-->
</html>

