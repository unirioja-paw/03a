<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
        <style>
            .grid-container {
                display: grid;
                grid-template-columns: auto auto;
                padding: 10px;
            }
            .grid-item {
                padding: 20px;
            }

        </style>
    </head>
    <body>
        <jsp:useBean id="persona" scope="request" class="es.unirioja.paw.model.Persona" />

        <h1>Datos de la persona</h1>
        <div class="grid-container">
            <div class="grid-item">
                <h2>Vista Scriptlet</h2>
                <p>Nombre: <%=persona.getNombre()%></p>
                <p>Sexo: <%=persona.getSexo().equals("h") ? "Hombre" : "Mujer"%></p>    
                <section>
                    Deportes: 
                    <ul>
                        <% for (String d : persona.getDeportes()) {%>
                        <li><%=d%></li>
                            <%
                                }
                            %>
                    </ul>
                </section>
            </div>
            <div class="grid-item">
                <h2>Vista EL y JSTL</h2>
                <p>Nombre: ${persona.nombre}</p>
                <p>Sexo: ${persona.sexo eq 'h' ? 'Hombre':'Mujer'}</p>    
                <section>
                    Deportes: 
                    <ul>
                        <c:forEach var="d" items="${persona.deportes}">
                            <li>${d}</li>
                            </c:forEach>
                    </ul>
                </section>
            </div>
        </div>


    </body>
</html>
