/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Modelo.Comentario;
import Modelo.Noticia;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author User
 */
public interface ComentarioDAO {
    public boolean insertarComentario(Comentario comentario) throws SQLException;

    public List<Comentario> listarComentario() throws SQLException;

    public Comentario obtenerPorId(int id) throws SQLException;

    public boolean actualizarComentario(Comentario comentario) throws SQLException;

    public boolean eliminarComentario(Comentario comentario) throws SQLException;
}
