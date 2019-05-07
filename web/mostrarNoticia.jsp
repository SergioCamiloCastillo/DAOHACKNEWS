<%@page import="Dao.UsuarioDAOImpl"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<body>


    <h1>Lista Usuarios</h1>
    <table>
        <tr>
            <td><a href="PreguntaController?action=index" >Ir al menú</a> </td>
        </tr>
    </table>

    <table border="1" width="100%">
        <tr>
            <td><strong>NOTICIA</strong> </td>

            <td><strong>URL</strong> </td>
            <td><strong>Texto</strong> </td>
            <td><strong>FECHA</strong> </td>
            <td colspan=2></td>
        </tr>
        <c:forEach var="fil" items="${filtro}">
            <tr>
                <td><c:out value="${fil.titulo}"/></td>
                <td><c:out value="${fil.url}"/></td>
                <td><c:out value="${fil.texto}"/></td>
                <td><c:out value="${fil.fecha}"/></td>



            </tr>
        </c:forEach>
    </table> 
</body>

</html>

