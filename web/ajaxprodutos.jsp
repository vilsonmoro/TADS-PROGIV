<%-- 
    Document   : ajaxprodutos
    Created on : 03/03/2021, 11:26:39
    Author     : vilso
--%>

<%@page import="Modelo.ProdutoDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<table>
    <thead>
        <tr>
            <th>Id</th>
            <th>Descrição</th>
            <th>Preço</th>
            <th>Qtde estoque</th>
            <th>Observação</th>
        </tr>
    </thead>
    <tbody>
        <%
            String filtro = request.getParameter("filtro");
            if (filtro == null) {
                filtro = "";
            }
            ResultSet rs = ProdutoDAO.consultar(filtro);
            while (rs.next()) {
                out.write("<tr>");
                out.write("<td>" + rs.getString("id") + "</td>");
                out.write("<td>" + rs.getString("descricao") + "</td>");
                out.write("<td>" + rs.getString("preco") + "</td>");
                out.write("<td>" + rs.getString("qtdeEstoque") + "</td>");
                out.write("<td>" + rs.getString("observacao") + "</td>");
                String objeto ="<td><input type='button' onclick=insereItem(";
                objeto = objeto + rs.getString("id") + ",'";
                objeto = objeto + rs.getString("descricao") +"','";
                objeto = objeto + rs.getString("preco") +"')";
                objeto = objeto + " value='Adicionar'/> </td>";    
                out.write(objeto);
                out.write("</tr>");
            }
        %>
    </tbody>
</table>
