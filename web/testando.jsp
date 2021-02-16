<%-- 
    Document   : testando
    Created on : 09/02/2021, 17:10:00
    Author     : vilso
--%>

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
          
          Usuario usuario = new Usuario();
          out.write("Nome " + usuario.getNome());
       
        %>
    </body>
</html>
