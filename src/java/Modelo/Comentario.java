
package Modelo;

public class Comentario {
    private Integer id;
    private String comentario;
    private String fechaComentario;
    private String noticia;

    public Comentario(Integer id, String comentario, String fechaComentario) {
        this.id = id;
        this.comentario = comentario;
        this.fechaComentario = fechaComentario;
        
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public String getFechaComentario() {
        return fechaComentario;
    }

    public void setFechaComentario(String fechaComentario) {
        this.fechaComentario = fechaComentario;
    }

    public String getNoticia() {
        return noticia;
    }

    public void setNoticia(String noticia) {
        this.noticia = noticia;
    }
    
    
}
