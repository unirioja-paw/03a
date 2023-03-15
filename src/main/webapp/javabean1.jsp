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

        <p>
            <jsp:useBean id="pageResolver" class="es.unirioja.jsp.PageResolver"/>
            Due date: <strong>${pageResolver.getApocalypseDay()}</strong>
        </p>

        <p>
            <jsp:useBean id="varString" scope="request" type="java.lang.String" />
            <jsp:useBean id="varInt" scope="request" type="java.lang.Integer" />
            <%= varString%> y <%= varInt%>
        </p>
    </body>
</html>
