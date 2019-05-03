package Dao;

import Modelo.Comentario;
import Modelo.Comentario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Modelo.Noticia;
import Modelo.Conexion;
import Modelo.Conexion;

public class ComentarioDAOImpl implements ComentarioDAO {

    private Conexion con;
    private Connection connection;

    public ComentarioDAOImpl(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
        con = new Conexion("jdbc:mysql://localhost:3306/hacknews", "root", "");
    }

    // insertar artículo
    @Override
    public boolean insertarComentario(Comentario comentario) throws SQLException {
        String sql = "INSERT INTO comentario (id, comentario, fechacomentario) VALUES (?,?,?)";
        //String sql = "INSERT INTO noticia (id_noticia, titulo, url, texto, fecha) VALUES (?,?,?,?,?)";

        System.out.println(comentario.getId());

        System.out.println(comentario.getComentario());
        System.out.println(comentario.getFechaComentario());

        con.conectar();
        connection = con.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, comentario.getId().toString());
        statement.setString(2, comentario.getComentario());
        statement.setString(3, comentario.getFechaComentario());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        con.desconectar();
        return rowInserted;
    }

    // listar todos los productos
    @Override
    public List<Comentario> listarComentario() throws SQLException {

        List<Comentario> listaComentarios = new ArrayList<Comentario>();
        String sql = "SELECT * FROM comentario";
        con.conectar();
        connection = con.getJdbcConnection();
        Statement statement = connection.createStatement();
        ResultSet resulSet = statement.executeQuery(sql);

        while (resulSet.next()) {
            int id = resulSet.getInt("id");
            String comentarios = resulSet.getString("comentario");
            String fechacomentario = resulSet.getString("fechacomentario");

            Comentario comentario = new Comentario(id, comentarios, fechacomentario);
            listaComentarios.add(comentario);
        }
        con.desconectar();
        return listaComentarios;
    }

    // obtener por id
    public Comentario obtenerPorId(int id) throws SQLException {
        Comentario comentario = null;

        String sql = "SELECT * FROM comentario WHERE id=?";
        con.conectar();
        connection = con.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id);

        ResultSet res = statement.executeQuery();
        if (res.next()) {
            comentario = new Comentario(res.getInt("id"), res.getString("comentario"), res.getString("fechacomentario"));
        }
        res.close();
        con.desconectar();

        return comentario;
    }

    // actualizar
    public boolean actualizarComentario(Comentario comentario) throws SQLException {
        boolean rowActualizar = false;
        String sql = "UPDATE comentario SET comentario=?,fechacomentario=? WHERE id = ?";
        con.conectar();
        connection = con.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, comentario.getComentario());
        statement.setString(2, comentario.getFechaComentario());
        statement.setInt(3, comentario.getId());

        rowActualizar = statement.executeUpdate() > 0;
        statement.close();
        con.desconectar();
        return rowActualizar;
    }

    //eliminar
    public boolean eliminarComentario(Comentario comentario) throws SQLException {
        boolean rowEliminar = false;
        String sql = "DELETE FROM comentario WHERE id=?";
        con.conectar();
        connection = con.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, comentario.getId());

        rowEliminar = statement.executeUpdate() > 0;
        statement.close();
        con.desconectar();

        return rowEliminar;
    }

}
