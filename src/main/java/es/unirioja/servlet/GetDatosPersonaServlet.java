package es.unirioja.servlet;

import com.github.javafaker.Faker;
import es.unirioja.paw.model.Persona;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetDatosPersonaServlet extends HttpServlet {

    private Faker faker = new Faker(new Locale("es"));

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        // Recogida de parámetros
        String nombre = request.getParameter("nombre");
        if (nombre == null || nombre.isEmpty()) {
            nombre = faker.gameOfThrones().character();
        }
        String sexo = request.getParameter("sexo");
        if (sexo == null || sexo.isEmpty()) {
            sexo = faker.gameOfThrones().house().substring(0, 1);
        }
        String[] deportes = request.getParameterValues("deportes");
        List<String> deporteCollection;
        if (deportes == null) {
            deporteCollection = Arrays.asList(faker.esports().game(), faker.esports().game());
        } else {
            deporteCollection = Arrays.asList(deportes);
        }

        // Preparación de los datos para la vista
        Persona p = new Persona(nombre, sexo, deporteCollection);
        request.setAttribute("persona", p);

        // Forward (en servlets es un poco más complicado)
        RequestDispatcher rd = request.getRequestDispatcher("/muestraPersona_servlet.jsp");
        rd.forward(request, resp);
    }

}
