<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teoría PAW: JSP</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <article>

            <%
                String str = "aaa";
                System.out.println("Result: " + str);
                if (str == null) {
            %>
            <p>
                String is null
            </p>
            <% } else {
            %>
            <p>
                String is not null
            </p>
            <% }
            %>

        </article>

    </body>
</html>
