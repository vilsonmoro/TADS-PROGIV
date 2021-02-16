<%-- 
    Document   : consultauser
    Created on : 16/02/2021, 19:25:59
    Author     : vilso
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Modelo.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Consulta de usuarios</h1>
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <%
                  ResultSet rs = UsuarioDAO.consultar();
                  while(rs.next()){
                     out.write("<tr>"); 
                     out.write("<td>" + rs.getString("id") + "</td>");
                     out.write("<td>" + rs.getString("nome") + "</td>");
                     out.write("<td>" + rs.getString("email") + "</td>");
                     out.write("</tr>");
                  }
                %>
            </tbody>
        </table>
    </body>
</html>
