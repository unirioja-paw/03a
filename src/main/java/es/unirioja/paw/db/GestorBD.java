package es.unirioja.paw.db;

import es.unirioja.paw.model.Articulo;
import java.util.List;

public interface GestorBD {

    public Articulo getArticulo(String id);

    public List<Articulo> getArticulos();

}
