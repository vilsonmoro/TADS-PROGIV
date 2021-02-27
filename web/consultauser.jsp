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
        <style>
           table {
                font-family: Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            table td, table th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            table tr:nth-child(even){background-color: #f2f2f2;}

            table tr:hover {background-color: #ddd;}

            table th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }
        </style>
    </head>
    <body>
        <h1>Consulta de usuarios</h1>
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Editar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <%
                    ResultSet rs = UsuarioDAO.consultar();
                    while (rs.next()) {
                        out.write("<tr>");
                        out.write("<td>" + rs.getString("id") + "</td>");
                        out.write("<td>" + rs.getString("nome") + "</td>");
                        out.write("<td>" + rs.getString("email") + "</td>");
                        out.write("<td><a href=editauser.jsp?iduser=" + rs.getString("id") + ">Editar</a></td>");
                        out.write("<td><a href=excluiruser.jsp?iduser=" + rs.getString("id") + ">Excluir</a></td>");
                        out.write("</tr>");
                    }
                %>
            </tbody>
        </table>
    </body>
</html>
