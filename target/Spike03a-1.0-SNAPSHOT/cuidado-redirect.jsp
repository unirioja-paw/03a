<%@page import="es.unirioja.paw.db.GestorBDImpl"%>
<%@page import="es.unirioja.paw.db.GestorBD"%>
<%@page import="es.unirioja.paw.model.Articulo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String cart = request.getParameter("cart");
    if (cart == null || cart.trim().length() == 0) {
        response.sendRedirect("index.html");
//        return;
    }
    Articulo a = new GestorBDImpl().getArticulo(cart);
    if (a == null) {
        System.out.println("a is null!"); // dara error 500 de Jasper
    }%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><title><%= a.getNombre()%></title>
            <meta name="keywords" content="<%= a.getFabricante()%>" lang="es-ES">
            </head>
            <body>
                <h1>Artículo <%= a.getDescripcion()%><</h1>



            </body>
</html>
