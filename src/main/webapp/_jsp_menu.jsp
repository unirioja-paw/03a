<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav style="padding: 10px; border-left: solid 10px ${requestScope.borderColor}; margin: 30px 0;">
    <ul>
        <li><a href="#">Menu Item 1</a></li>
        <li><a href="#">Menu Item 2</a></li>
        <li><a href="#">Menu Item 3</a></li>
        <li><a href="#">Menu Item 4</a></li>
        <li><a href="#">Menu Item 5</a></li>
        <li><a href="#">Menu Item 6</a></li>
    </ul>
    SessionId=<%=request.getParameter("sessionId")%>
</nav>