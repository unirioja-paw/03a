<%@page import="java.util.Arrays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
    </head>
    <body>
        <h1>Parameter values</h1>
        <div>
            <h2>Street</h2>
            <%= Arrays.toString(request.getParameterValues("street"))%>
        </div>
        <div>
            <h2>Hobbies</h2>
            <%
                if (request.getParameterValues("hobbies") != null)
                    for (String s : request.getParameterValues("hobbies")) {
                        out.println(s);
                        out.println("<br>");
                    }
                else
                    out.println("hobbies null");
            %>
        </div>
    </body>
</html>
