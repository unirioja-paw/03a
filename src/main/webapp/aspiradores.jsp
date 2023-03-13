<%@page import="java.io.File"%>
<%@page import="es.unirioja.paw.model.Articulo"%>
<%@page import="es.unirioja.paw.db.GestorBDMock"%>
<%@page import="es.unirioja.paw.db.GestorBD"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    GestorBD gbd = new GestorBDMock();
    List<Articulo> articulos = gbd.getArticulos();
    File dir = new File(application.getRealPath("/img/fotosElectr/Aspirador"));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aspiradores</title>
        <style>
            .articulo-wrapper {
                float: left;
                width: 150px;
                margin: 10px 20px;
            }
            .articulo-title {
                height: 50px;
                font-weight: bold;
            }
            .foto {
                padding: 5px;
                margin:10px;
                border:1px solid black;
                width: 110px;
                height: 140px
            }
        </style>
    </head>
    <body>
        <h1>Fotos de aspiradores</h1>
        <%
            for (Articulo a : articulos) {
        %>
        <div class="articulo-wrapper">
            <div class="articulo-title">
                <%= a.getNombre()%>
            </div>
            <img class="foto" src="img/fotosElectr/Aspirador/<%= a.getFoto()%>" alt="<%= a.getNombre()%>"/>
            <div>
                <%= a.getFabricante()%>
            </div>
        </div>
        <%
            }
        %>
    </body>
</html>
