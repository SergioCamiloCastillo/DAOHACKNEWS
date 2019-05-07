package Modelo;

public class Usuario {

    private int id;
    private String nombrecompleto;
    private String usuario;
    private String contra;
    private int nivel;

    public Usuario(String usuario, int nivel, String contra) {

        this.nombrecompleto = nombrecompleto;
        this.nivel = nivel;
        this.contra=contra;
        this.usuario=usuario;
       
    }

    public int getNivel() {
        return nivel;
    }

    public void setNivel(int nivel) {
        this.nivel = nivel;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombrecompleto() {
        return nombrecompleto;
    }

    public void setNombrecompleto(String nombrecompleto) {
        this.nombrecompleto = nombrecompleto;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }

}
