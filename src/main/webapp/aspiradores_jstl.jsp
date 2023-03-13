<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.io.File"%>
<%@page import="es.unirioja.paw.model.Articulo"%>
<%@page import="es.unirioja.paw.db.GestorBDMock"%>
<%@page import="es.unirioja.paw.db.GestorBD"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <jsp:useBean id="gbd" class="es.unirioja.paw.db.GestorBDMock"/>
        <c:forEach var="a" items="${gbd.getArticulos()}">
            <div class="articulo-wrapper">
                <div class="articulo-title">
                    ${a.nombre}
                </div>
                <img class="foto" src="img/fotosElectr/Aspirador/${a.foto}" alt="${a.nombre}"/>
                <div>
                    ${a.fabricante}
                </div>
            </div>
        </c:forEach>


    </body>
</html>
