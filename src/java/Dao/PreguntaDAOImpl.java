/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Modelo.Conexion;
import Modelo.Noticia;
import Modelo.Pregunta;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class PreguntaDAOImpl implements PreguntaDAO{
    private Conexion con;
    private Connection connection;

    public PreguntaDAOImpl(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
        con = new Conexion("jdbc:mysql://localhost:3306/hacknews", "root", "");
    }

    // insertar artículo
    @Override
    public boolean insertarPregunta(Pregunta pregunta) throws SQLException {
        String sql = "INSERT INTO pregunta (id, pregunta, fecha) VALUES (?,?,?)";
        //String sql = "INSERT INTO comentario (id, comentario, fechacomentario, noticia) VALUES (?,?,?,?)";
        //System.out.println(articulo.getDescripcion());
        con.conectar();
        connection = con.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, pregunta.getId().toString());
        statement.setString(2, pregunta.getPregunta());
        statement.setString(3, pregunta.getFecha());
        

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        con.desconectar();
        return rowInserted;
    }

    // listar todos los productos
    @Override
    public List<Pregunta> listarPregunta() throws SQLException {

        List<Pregunta> listaPreguntas = new ArrayList<Pregunta>();
        String sql = "SELECT * FROM pregunta";
        con.conectar();
        connection = con.getJdbcConnection();
        Statement statement = connection.createStatement();
        ResultSet resulSet = statement.executeQuery(sql);

        while (resulSet.next()) {
            int id = resulSet.getInt("id");
            String preguntas = resulSet.getString("pregunta");
            String fecha = resulSet.getString("fecha");
            

            Pregunta pregunta = new Pregunta(id, preguntas, fecha);
            listaPreguntas.add(pregunta);
        }
        con.desconectar();
        return listaPreguntas;
    }

    // obtener por id
    public Pregunta obtenerPorId(int id) throws SQLException {
        Pregunta pregunta = null;

        String sql = "SELECT * FROM pregunta WHERE id= ? ";
        con.conectar();
        connection = con.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, id);

        ResultSet res = statement.executeQuery();
        if (res.next()) {
            pregunta = new Pregunta(res.getInt("id"), res.getString("pregunta"), res.getString("fecha"));
        }
        res.close();
        con.desconectar();

        return pregunta;
    }

    // actualizar
    public boolean actualizarPregunta(Pregunta pregunta) throws SQLException {
        boolean rowActualizar = false;
        String sql = "UPDATE pregunta SET pregunta=?, fecha=? WHERE id = ?";
        con.conectar();
        connection = con.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        
        statement.setString(1, pregunta.getPregunta());
        statement.setString(2, pregunta.getFecha());
        statement.setString(3, pregunta.getId().toString());

        rowActualizar = statement.executeUpdate() > 0;
        statement.close();
        con.desconectar();
        return rowActualizar;
    }

    //eliminar
    public boolean eliminarPregunta(Pregunta pregunta) throws SQLException {
        boolean rowEliminar = false;
        String sql = "DELETE FROM pregunta WHERE id=?";
        con.conectar();
        connection = con.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, pregunta.getId());

        rowEliminar = statement.executeUpdate() > 0;
        statement.close();
        con.desconectar();

        return rowEliminar;
    }
}
