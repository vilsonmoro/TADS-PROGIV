<%-- 
    Document   : cadastrovenda
    Created on : 02/03/2021, 10:24:49
    Author     : vilso
--%>

<%@page import="Controller.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          List<String> lerLista = (List<String>)session.getAttribute("carrinho"); 
          for(String s : lerLista){
              out.write(s + "<br />");
          }
       %>
        <form action="cadastrovenda.jsp" method="POST">
            <label style="float: right" name="userLogado">
                <%
                  Usuario usuario = (Usuario) session.getAttribute("user");
                  if (usuario != null)
                     out.write(usuario.getNome() + " " + usuario.getId());  
                  else
                     response.sendRedirect("login.jsp");
                %>                
                
            </label>
            <input type="checkbox" name="aPrazo"> Venda a prazo </input>
            
        </form>
    </body>
</html>
