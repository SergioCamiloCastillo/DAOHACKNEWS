
package Dao;

import Modelo.Comentario;
import Modelo.Pregunta;
import java.sql.SQLException;
import java.util.List;

public interface PreguntaDAO {
    public boolean insertarPregunta(Pregunta pregunta) throws SQLException;

    public List<Pregunta> listarPregunta() throws SQLException;

    public Pregunta obtenerPorId(int id) throws SQLException;

    public boolean actualizarPregunta(Pregunta pregunta) throws SQLException;

    public boolean eliminarPregunta(Pregunta pregunta) throws SQLException;
}
