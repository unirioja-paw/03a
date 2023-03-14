<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
    </head>
    <body>
        <h1>Response</h1>
        <%
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Ups, cannot find where you're looking for");
        %>
    </body>
</html>
