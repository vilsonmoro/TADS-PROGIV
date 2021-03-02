<%-- 
    Document   : testando
    Created on : 09/02/2021, 17:10:00
    Author     : vilso
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controller.Usuario"%>
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%          
          List<String> lista = new ArrayList<>();
          lista.add("Feijão");
          lista.add("Arroz");
          lista.add("Sal");
          lista.add("Cominho");
          session.setAttribute("carrinho", lista);
       %>
          
              
       <%
          List<String> lerLista = (List<String>)session.getAttribute("carrinho"); 
          for(String s : lerLista){
              out.write(s + "<br />");
          }
       %>
    </body>
</html>
