package es.unirioja.paw.model;

import java.util.List;

public class Persona {

    private String nombre;
    private String sexo;
    private List<String> deportes;

    public Persona() {
    }

    public Persona(String nombre, String sexo, List<String> deportes) {
        this.nombre = nombre;
        this.sexo = sexo;
        this.deportes = deportes;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public List<String> getDeportes() {
        return deportes;
    }

    public void setDeportes(List<String> deportes) {
        this.deportes = deportes;
    }

}
