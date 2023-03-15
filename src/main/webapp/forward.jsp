<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
    </head>
    <body>
        <h1>jsp:forward</h1>
        <div>
            <jsp:useBean id="pageResolver" class="es.unirioja.jsp.PageResolver"/>
            <c:if test="${!pageResolver.isApocalypseDay()}">
                <jsp:forward page="forward_not_today.jsp" />
            </c:if>

        </div>
    </body>
</html>
