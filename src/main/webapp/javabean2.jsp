<%@page import="java.util.List"%>
<%@page import="es.unirioja.paw.model.Articulo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    request.setAttribute("varString", "Prueba de transmitir un String");
    request.setAttribute("varInt", 13);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
    </head>
    <body>
        <h1>Java Bean</h1>
        <jsp:useBean scope="application" id="gbd" class="es.unirioja.paw.db.GestorBDMock"/>
        <p>
            <select name="tipo" id="tipo">
                <option value="-1">- Cualquiera -</option>
                <%
                    List<Articulo> itemCollection = gbd.getArticulos();
                    for (Articulo a : itemCollection) {
                %>
                <option value="<%= a%>"><%= a.getNombre()%></option>
                <%
                    }
                %>
            </select>

        </p>


    </body>
</html>
