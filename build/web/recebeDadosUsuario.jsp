<%-- 
    Document   : recebeDadosUsuario
    Created on : 16/02/2021, 18:50:19
    Author     : vilso
--%>

<%@page import="Controller.Usuario"%>
<%@page import="Modelo.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String nome = request.getParameter("nome"); 
           String email = request.getParameter("email");
           String password = request.getParameter("password");
           Usuario user = new Usuario(nome, email, password);
           if(UsuarioDAO.salvar(user)){
               out.write("salvo com sucesso");             
           }
        %>
        <a href="consultauser.jsp">Consulta</a>
    </body>
</html>
