<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
        <style>
            .box {
                border: solid 3px #CCC;
                background-color: aliceblue;
                padding: 10px 20px;
            }
            .box-info {
                border-color: #017093;
                background-color: lightcyan;
            }

        </style>
    </head>
    <body>
        <h1>jsp:element, jsp:body</h1>
        <jsp:element name="div">
            <jsp:attribute name="class">box box-info</jsp:attribute>
            <jsp:body>
                <p>
                    Vestibulum sapien nisl, ornare auctor, consectetuer quis, posuere tristique, odio. Fusce ultrices ullamcorper odio. Ut augue nulla, interdum at, adipiscing non, tristique eget, neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut pede est, condimentum id, scelerisque ac, malesuada non, quam. Proin eu ligula ac sapien suscipit blandit. Suspendisse euismod. Ut accumsan, neque id gravida luctus, arcu pede sodales felis, vel blandit massa arcu eget ligula. Aenean sed turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sem eros, ornare ut, commodo eu, tempor nec, risus. Donec laoreet dapibus ligula. Praesent orci leo, bibendum nec, ornare et, nonummy in, elit. Donec interdum feugiat leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque feugiat ullamcorper ipsum. Donec convallis tincidunt urna.
                </p>
            </jsp:body>
        </jsp:element>
    </body>
</html>
