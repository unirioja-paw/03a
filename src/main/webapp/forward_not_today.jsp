<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
    </head>
    <body>
        <h1 style="color: green;">Not today... </h1>
        <div>
            <jsp:useBean id="pageResolver" class="es.unirioja.jsp.PageResolver"/>
            <p style="color: green; font-weight: bold;">
                Still waiting for Elisabeth Doppler through the forest
            </p>
            <p>
                Due date: <strong>${pageResolver.getApocalypseDay()}</strong>
            </p>
            
        </div>
    </body>
</html>
