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
           
           String acao = request.getParameter("acao");
           if(acao.equal("S")){
                if(UsuarioDAO.salvar(user)){
                    out.write("salvo com sucesso");             
                }
           }
           else{
             String iduser = request.getParameter("iduser");
             user.setId(Integer.parseInt(iduser));
             if(UsuarioDAO.alterar(user)){
                    out.write("Alterado com sucesso");             
                }
           }
        %>
        <a href="consultauser.jsp">Consulta</a>
    </body>
</html>
