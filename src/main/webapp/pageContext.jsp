<%@page import="es.unirioja.paw.model.Articulo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Articulo a = new Articulo();
    a.setNombre("Dummy");
    request.setAttribute("articulo", a);
    application.setAttribute("appname", "Practica 2");
    session.setAttribute("username", "john");
    pageContext.setAttribute("pagina", "uno");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
    </head>
    <body>
        <h1>pageContext</h1>
        <ul>
            <li>ApplicationContext: ${pageContext.servletContext.getAttribute("appname")}</li>
            <li>Session Context: ${pageContext.session.getAttribute("username")}</li>
            <li>Request Context: ${pageContext.request.getAttribute("articulo")}</li>
            <li>Page Context: ${pagina}</li>
        </ul>        
    </body>
</html>
