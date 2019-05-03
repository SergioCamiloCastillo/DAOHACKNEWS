
package Modelo;

public class Pregunta {
    private Integer id;
    private String pregunta;
    private String fecha;

    public Pregunta(Integer id, String pregunta, String fecha) {
        this.id = id;
        this.pregunta = pregunta;
        this.fecha = fecha;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    
}
