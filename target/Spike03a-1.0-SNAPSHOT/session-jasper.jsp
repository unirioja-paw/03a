<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
    </head>
    <body>
        <h1>Session en Servlet generado</h1>
        <article>

            <%
                session.getAttribute("aaaa");
            %>

            <p>
                Mira el código generado ("View Servlet")
            </p>
        </article>

    </body>
</html>
