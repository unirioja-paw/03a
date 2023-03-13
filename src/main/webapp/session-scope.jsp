<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String counterVariableKey = "counter";
    Integer counter = (Integer) session.getAttribute(counterVariableKey);
    if (counter == null) {
        application.log("Variable " + counterVariableKey + " null, setting");
        session.setAttribute(counterVariableKey, 0);

    } else {
        session.setAttribute(counterVariableKey, ++counter);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
    </head>
    <body>
        <h1>Session en Servlet generado</h1>
        <article>
            <h2>Session Id <%=   session.getId()%></h2>
            <h3>Variable <%= counterVariableKey%></h3>
            <p>
                counter: <%= counter%>
            </p>
        </article>

    </body>
</html>
