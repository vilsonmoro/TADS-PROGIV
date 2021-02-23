<%-- 
    Document   : editauser
    Created on : 23/02/2021, 19:00:34
    Author     : vilso
--%>
<%@page import="Controller.Usuario"%>
<%@page import="Modelo.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastro</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            * {
                box-sizing: border-box;
            }
            .container{
                width: 60%;
                margin-left: auto;
                margin-right: auto;
                border: red solid 1px;
                padding: 10px;
            }
            
            input[type=text], input[type=password]{
                width: 100%;
                padding: 10px;
                margin-bottom: 15px;
            }
            
            input[type=button]{
                width: 50%;
                padding: 10px;
                border-radius: 20px;
            }
        </style>         
    </head>
    <body>
        <%
          String iduser = request.getParameter("iduser");
          Usuario usuario = UsuarioDAO.consultar(Integer.parseInt(iduser));
        %>
        <div class="container">
            <form name="cadastro" action="recebeDadosUsuario.jsp?acao='U'" method="GET">
                <input type="text" value="<%out.write(usuario.getNome());%>"
                       name="iduser"/>
                <label for="name">Informe o nome</label>
                <input type="text" 
                       id="name" 
                       name="nome" 
                       placeholder="Informe nome" 
                       value="<%out.write(usuario.getNome());%>"/>
                
                <label for="email">Informe o email</label>
                <input type="text" 
                       id="email" 
                       name="email"
                       value="<%out.write(usuario.getEmail());%>"/>
                       
                
                <label for="password">Informe a senha</label>
                <input type="password" 
                       id="password" 
                       name="password"
                       value="<%out.write(usuario.getPassword());%>"/>
                <input type="button" value="Gravar" onclick="enviaForm()" />
            </form> 
                        
        </div>  
        <script>
            function enviaForm(){
               var name = document.getElementById("name"); 
               if(name.value === ""){
                  alert("informe nome");
                  name.focus();
                  return;
               }
               
               var email = document.getElementById("email"); 
               if(email.value === ""){
                  alert("informe email");
                  email.focus();
                  return;
               }
               
               var password = document.getElementById("password"); 
               if(password.value === ""){
                  alert("informe a senha");
                  password.focus();
                  return;
               }
              // document.forms[0].submit();
              var form = document.getElementsByName("cadastro")[0];
              form.submit();
            }
        </script>   
    </body>
</html>
