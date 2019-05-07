<%-- 
    Document   : vistaAdministrador
    Created on : 6/05/2019, 10:25:26 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
</html>
