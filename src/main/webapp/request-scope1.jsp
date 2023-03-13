<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    request.setAttribute("displayTitle", "Ejemplo de variable");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
    </head>
    <body>
        <h1>Scopes de un JSP - request</h1>
        <article>
            <p>
                displayTitle: <%= request.getAttribute("displayTitle")%>
            </p>
        </article>

    </body>
</html>
