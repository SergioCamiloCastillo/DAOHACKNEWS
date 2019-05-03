/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Modelo.Noticia;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author User
 */
public interface NoticiaDAO {

    public boolean insertar(Noticia noticia) throws SQLException;

    public List<Noticia> listarNoticias() throws SQLException;

    public Noticia obtenerPorId(int id) throws SQLException;

    public boolean actualizar(Noticia noticia) throws SQLException;

    public boolean eliminar(Noticia noticia) throws SQLException;

}
