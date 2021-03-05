<%-- 
    Document   : vendacomajax
    Created on : 04/03/2021, 20:18:48
    Author     : vilso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <input type="text" name="filtro" />
        <input type="button" onclick="pesquisar()" value="Pesquisar" />
        <div id="ancora">

        </div>
        <script>
            function pesquisar() {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.readyState === 4 && this.status === 200) {
                        document.getElementById("ancora").innerHTML = this.responseText;
                    }
                };
                xhttp.open("GET", "ajaxprodutos.jsp", true);
                xhttp.send();
            }
        </script>
    </body>
</html>
