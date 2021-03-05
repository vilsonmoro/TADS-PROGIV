<%-- 
    Document   : vendaajax
    Created on : 03/03/2021, 10:50:55
    Author     : vilso
--%>

<%@page import="Modelo.ProdutoDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <input type="text" name="filtro" />
            <input type="button" value="Pesquisar" onclick="searchProducts()"/>
        </div>

        <div id="resultado">

        </div>
        

        <script>
            var itens = [];
            var xmlhttp = new XMLHttpRequest();
            
            function searchProducts() {
                var filtro = document.getElementsByName("filtro")[0].value;                
                xmlhttp.onreadystatechange = function () {
                    if (this.readyState === 4 && this.status === 200) {
                        document.getElementById("resultado").innerHTML = this.responseText;
                    }
                };
                xmlhttp.open("GET", "ajaxprodutos.jsp?filtro=" + filtro, true);
                xmlhttp.send();
            }

            function insereItem(item, descricao, preco) {
                debugger;
               /* var obj = {id: item, descricao: descricao, preco: preco};
                itens.push(obj);
                
                var dados = "";
                for (i = 0; i < itens.length; i++) {
                   dados = "<tr>";
                   dados = dados + "<td>"+ itens[i].id +"</td>";
                   dados = dados + "<td>"+ itens[i].descricao +"</td>";
                   dados = dados + "<td>"+ itens[i].preco +"</td>";
                   dados = dados + "</tr>";
                }
                document.getElementById("carrinho").innerHTML = dados;*/
                xmlhttp.onreadystatechange = function () {
                    if (this.readyState === 4 && this.status === 200) {
                       // document.getElementById("resultado").innerHTML = this.responseText;
                    }
                };
                xmlhttp.open("POST", "insertitens.jsp?idproduto=" + item, true);
                xmlhttp.send();        
            }

        </script>

    </body>
</html>
