package Modelo;

/*
 * @autor: Elivar Largo
 * @ web: www.ecodeup.com 
 */
public class Noticia {

    private int id;
    private String titulo;
    private String url;
    private String texto;
    private String fecha;

    public Noticia(Integer id, String titulo, String url, String texto, String fecha) {
        this.id = id;
        this.titulo = titulo;
        this.url = url;
        this.texto = texto;
        this.fecha = fecha;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    

}
