package es.unirioja.paw.db;

import com.github.javafaker.Faker;
import es.unirioja.paw.model.Articulo;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class GestorBDMock implements GestorBD {

    private Faker faker = new Faker(new Locale("es"));

    private Articulo mockArticulo(int articuloId) {
        return mockArticulo(String.format("%02d", articuloId));
    }

    private Articulo mockArticulo(String id) {
        Articulo a = new Articulo();
        a.setNombre(faker.commerce().productName());
        a.setFabricante(faker.company().name());
        a.setDescripcion(faker.lorem().paragraph());
        a.setFoto("aspirador" + id + ".jpg");
        return a;
    }

    public Articulo getArticulo(String id) {
        return mockArticulo(id);
    }

    @Override
    public List<Articulo> getArticulos() {
        List<Articulo> result = new ArrayList<>();
        for (int i = 0; i < 5; i++) {
            result.add(mockArticulo(i));
        }
        return result;
    }

}
