package Dao;

import Modelo.Conexion;
import Modelo.Pregunta;
import Modelo.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
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
public class UsuarioDAOImpl implements UsuarioDAO {

    private Conexion con;
    private Connection connection;

    public UsuarioDAOImpl(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
        con = new Conexion("jdbc:mysql://localhost:3306/hacknews", "root", "");
    }

    // insertar artículo
    @Override
    public List<Usuario> accesar(String usuario, String contra) throws SQLException {
        List<Usuario> datos = new ArrayList<>();
        Connection conn;
        PreparedStatement pst;
        ResultSet rs;
        String sql = "select usuario, nivelUsuario from usuario "
                + "where usuario='" + usuario + "' and contra='" + contra
                + "'";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/hacknews", "root", "");
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                datos.add(new Usuario(rs.getString("usuario"),
                        rs.getInt("nivelUsuario"),""));
            }
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {

        }
        return datos;
    }

    /*public boolean ingresarUsuario(Usuario usuario) throws SQLException {
        String sql = "INSERT INTO pregunta (id, pregunta, fecha) VALUES (?,?,?)";
        //String sql = "INSERT INTO comentario (id, comentario, fechacomentario, noticia) VALUES (?,?,?,?)";
        //System.out.println(articulo.getDescripcion());
        con.conectar();
        connection = con.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, usuario.getId().toString());
        statement.setString(2, usuario.getUsuario());
        statement.setString(3, usuario.getFecha());
        

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        con.desconectar();
        return rowInserted;
    }*/
    // listar todos los productos
    @Override
    public boolean registrarUsuario(Usuario usuario) throws SQLException {
        System.out.println(usuario.getUsuario());
        System.out.println(usuario.getContra());
       
        String sql = "INSERT INTO usuario (nombre_completo, usuario, contra, nivelUsuario) VALUES (?,?,?,?)";
        //String sql = "INSERT INTO comentario (id, comentario, fechacomentario, noticia) VALUES (?,?,?,?)";
        //System.out.println(articulo.getDescripcion());
        con.conectar();
        connection = con.getJdbcConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        //statement.setString(1, pregunta.getId().toString());
       
        statement.setString(1, usuario.getUsuario());
        statement.setString(2, usuario.getUsuario());
        statement.setString(3, usuario.getContra());
        statement.setString(4, "2".toString());

        boolean rowInserted = statement.executeUpdate() > 0;
        statement.close();
        con.desconectar();
        return rowInserted;
    }

    @Override
    public List<Usuario> listarUsuarios() throws SQLException {

        List<Usuario> listaUsuarios = new ArrayList<Usuario>();
        String sql = "SELECT * FROM usuario";
        con.conectar();
        connection = con.getJdbcConnection();
        Statement statement = connection.createStatement();
        ResultSet resulSet = statement.executeQuery(sql);

        while (resulSet.next()) {
            String nombre_completo = resulSet.getString("nombre_completo");
            String usuarios = resulSet.getString("usuario");
            String contra = resulSet.getString("contra");
            int nivel = resulSet.getInt("nivelUsuario");
            Usuario usuario = new Usuario(usuarios, nivel, contra);
            listaUsuarios.add(usuario);
        }
        con.desconectar();
        return listaUsuarios;
    }

    // obtener por id
    public Usuario obtenerPorId(int id) throws SQLException {
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
    public boolean actualizar(Usuario usuario) throws SQLException {
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
    public boolean eliminar(Usuario usuario) throws SQLException {
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
