<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <article>
            <% String nombre = request.getParameter("nombre");
                String sexo = request.getParameter("sexo");
                String[] deportes = request.getParameterValues("deportes");
            %>
            <p>Nombre: <%=nombre%></p>
            <p>Sexo: <%=sexo.equals("h") ? "Hombre" : "Mujer"%></p>    
            <p>
                Deportes: 
                <% for (String d : deportes)%> <%=d+' ' %>
            </p>




        </article>
    </body>
</html>
