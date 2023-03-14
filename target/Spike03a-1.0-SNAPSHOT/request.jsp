<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
    </head>
    <body>
        <h1>Request</h1>
        <article>

            <section>
                <h2>request</h2>
                <ul>
                    <li>Scheme: <%=request.getScheme()%></li>
                    <li>Protocol: <%=request.getProtocol()%></li>
                    <li>Method: <%=request.getMethod()%></li>
                    <li>RequestURL: <%=request.getRequestURL()%></li>
                    <li>RequestURI: <%=request.getRequestURI()%></li>
                    <li>ContextPath: <%=request.getContextPath()%></li>
                    <li>ServletPath: <%=request.getServletPath()%></li>
                    <li>QueryString: <%=request.getQueryString()%></li>
                    <li>LocalAddr: <%=request.getLocalAddr()%></li>
                </ul>
            </section>
            <section>
                <h2>Parámetros null / empty</h2>
                <ul>
                    <li>
                        uno: <%=request.getParameter("uno")%>
                        <br> null? <%=request.getParameter("uno") == null%>
                        <br> isEmpty: <%=request.getParameter("uno").isEmpty()%>
                    </li>
                    <li>otro: <%=request.getParameter("otro")%></li>
                    <li>dos: <%=request.getParameter("dos")%></li>
                </ul>
            </section>

        </article>

    </body>
</html>
