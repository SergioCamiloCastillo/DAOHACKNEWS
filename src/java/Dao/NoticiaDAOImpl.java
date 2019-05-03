package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Modelo.Noticia;
import Modelo.Conexion;


public class NoticiaDAOImpl implements NoticiaDAO {

    private Conexion con;
    private Connection connection;

    public NoticiaDAOImpl(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
        con = new Conexion("jdbc:mysql://localhost:3306/hacknews", "root", "");
    }

    // insertar artículo
    @Override
    public boolean insertar(Noticia noticia) throws SQLException {
        String sql = "INSERT INTO noticia (id_noticia, titulo, url, texto, fecha) VALUES (?,?,?,?,?)";
        //String sql = "INSERT INTO comentario (id, comentario, fechacomentario, noticia) VALUES (?,?,?,?)";
        //System.out.println(articulo.getDescripcion());
        con.conectar();
        connection = con.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, noticia.getId().toString());
        statement.setString(2, noticia.getTitulo());
        statement.setString(3, noticia.getUrl());
        statement.setString(4, noticia.getTexto());
        statement.setString(5, noticia.getFecha());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        con.desconectar();
        return rowInserted;
    }

    // listar todos los productos
    @Override
    public List<Noticia> listarNoticias() throws SQLException {

        List<Noticia> listaNoticias = new ArrayList<Noticia>();
        String sql = "SELECT * FROM noticia";
        con.conectar();
        connection = con.getJdbcConnection();
        Statement statement = connection.createStatement();
        ResultSet resulSet = statement.executeQuery(sql);

        while (resulSet.next()) {
            int id = resulSet.getInt("id_noticia");
            String titulo = resulSet.getString("titulo");
            String url = resulSet.getString("url");
            String texto = resulSet.getString("texto");
            String fecha = resulSet.getString("fecha");

            Noticia noticia = new Noticia(id, titulo, url, texto, fecha);
            listaNoticias.add(noticia);
        }
        con.desconectar();
        return listaNoticias;
    }

    // obtener por id
    public Noticia obtenerPorId(int id) throws SQLException {
        Noticia noticia = null;

        String sql = "SELECT * FROM noticia WHERE id_noticia= ? ";
        con.conectar();
        connection = con.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id);

        ResultSet res = statement.executeQuery();
        if (res.next()) {
            noticia = new Noticia(res.getInt("id_noticia"), res.getString("titulo"), res.getString("url"),
                    res.getString("texto"), res.getString("fecha"));
        }
        res.close();
        con.desconectar();

        return noticia;
    }

    // actualizar
    public boolean actualizar(Noticia noticia) throws SQLException {
        boolean rowActualizar = false;
        String sql = "UPDATE noticia SET titulo=?,url=?,texto=?,fecha=? WHERE id_noticia = ?";
        con.conectar();
        connection = con.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, noticia.getTitulo());
        statement.setString(2, noticia.getUrl());
        statement.setString(3, noticia.getTexto());
        statement.setString(4, noticia.getFecha());
        statement.setInt(5, noticia.getId());

        rowActualizar = statement.executeUpdate() > 0;
        statement.close();
        con.desconectar();
        return rowActualizar;
    }

    //eliminar
    public boolean eliminar(Noticia noticia) throws SQLException {
        boolean rowEliminar = false;
        String sql = "DELETE FROM noticia WHERE id_noticia=?";
        con.conectar();
        connection = con.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, noticia.getId());

        rowEliminar = statement.executeUpdate() > 0;
        statement.close();
        con.desconectar();

        return rowEliminar;
    }

}
