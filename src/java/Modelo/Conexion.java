package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * @autor: Elivar Largo
 * @web: www.ecodeup.com
 */
public class Conexion {

    private Connection jdbcConnection;
    private String jdbcURL;
    private String jdbcUsername;
    private String jdbcPassword;

    public Conexion(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        this.jdbcURL = "jdbc:mysql://localhost:3306/hacknews";
        this.jdbcUsername = "root";
        this.jdbcPassword = "";
    }

    public void conectar() throws SQLException {
        if (jdbcConnection == null || jdbcConnection.isClosed()) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            jdbcConnection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/hacknews", "root", "");
        }
    }

    public void desconectar() throws SQLException {
        if (jdbcConnection != null && !jdbcConnection.isClosed()) {
            jdbcConnection.close();
        }
    }

    public Connection getJdbcConnection() {
        return jdbcConnection;
    }

}
