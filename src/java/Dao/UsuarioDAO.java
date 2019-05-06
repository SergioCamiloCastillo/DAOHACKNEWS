/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Modelo.Noticia;
import Modelo.Usuario;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author User
 */
public interface UsuarioDAO {
    
     public List<Usuario> accesar(String usuario, String contra) throws SQLException;

    public List<Usuario> listarUsuarios() throws SQLException;

    public Usuario obtenerPorId(int id) throws SQLException;

    public boolean actualizar(Usuario usuario) throws SQLException;

    public boolean eliminar(Usuario usuario) throws SQLException;

}
