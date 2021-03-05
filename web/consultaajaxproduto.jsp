<%-- 
    Document   : consultaajaxproduto
    Created on : 04/03/2021, 20:40:33
    Author     : vilso
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Modelo.ProdutoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String filtro = request.getParameter("filtro");
    if (filtro == null) {
        filtro = "";
    }

    ResultSet rs = ProdutoDAO.consultar(filtro);
    out.write("<table>");
    out.write("<tr>");
    out.write("<th> Código </td>");
    out.write("<th> Descrição </td>");
    out.write("<th> Preço </td>");
    out.write("<th> Estoque </td>");
    out.write("</tr>");
    while (rs.next()) {
        out.write("<tr>");
        out.write("<td>" + rs.getString("id") + "</td>");
        out.write("<td>" + rs.getString("descricao") + "</td>");
        out.write("<td>" + rs.getString("preco") + "</td>");
        out.write("<td>" + rs.getString("qtdeEstoque") + "</td>");
        out.write("</tr>");
    }
    out.write("</table>");
%>
