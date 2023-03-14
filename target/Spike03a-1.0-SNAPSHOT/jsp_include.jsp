<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
    </head>
    <body>
        <%@include file='_header.jsp' %>
        
        <jsp:include page="_jsp_menu.jsp">
            <jsp:param name="sessionId" value="${pageContext.session.id}"/>
        </jsp:include>

        <article>
            <p>
                Este es el contenido principal de la página
            </p>
        </article>

        <%@include file='_footer.jsp' %>

    </body>
</html>
