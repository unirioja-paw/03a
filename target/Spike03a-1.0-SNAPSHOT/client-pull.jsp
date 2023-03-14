<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Refresh", "5; PersonForm.html");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <article>
            <h1>Hola. Redirigiendo en 5 segundos a PersonForm.html</h1>
            <p>Son las <%= new Date()%></p>  
        </article>
        
        
        
        
        
        
        <footer style="margin-top: 200px; font-weight: bold; font-family: verdana;  color: chocolate; text-align: right;">
            <p>
                Peritos' coming...
            </p>
        </footer>
    </body>
</html>

