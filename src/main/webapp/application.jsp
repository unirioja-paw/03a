<%@page import="java.net.URL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    // realPath
    String realPath = application.getRealPath("background-night.png");
    // resource
    String filename = "/config.json";
    URL appResourceUrl = application.getResource(filename);
    ClassLoader classLoader = getClass().getClassLoader();
    URL classLoaderResourceUrl = classLoader.getResource(filename);
    // log
    application.log("Rendering page..."); // ver log del Tomcat
    // initParameter
    String initParameter = application.getInitParameter("universidad");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
    </head>
    <body>
        <h1>Application</h1>
        <article>
            <section>
                <ul>
                    <li>application.getRealPath: <%= realPath%></li>
                </ul>
                <p>Notar que con getRealPath no es necesario que el fichero exista</p>
            </section>
            <section>
                <ul>
                    <li>application.getResource: <%= appResourceUrl%></li>
                    <li>classLoader.getResource: <%= classLoaderResourceUrl%></li>
                </ul>
            </section>
            <section>
                <ul>
                    <li>application.getInitParameter: <%= initParameter%></li>
                </ul>

            </section>
        </article>

    </body>
</html>
