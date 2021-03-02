<%-- 
    Document   : login
    Created on : 02/03/2021, 10:31:47
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
        <style>
            body{
                background: #E5E5E5; 
            }

            *{
                box-sizing: border-box;
            }
            input[type=text]{
                background: #F8FCFC;
                border-radius: 10px;
                width: 100%;                  
            }

            input[type=button]{
                background: #5C8997;
                border-radius: 15px;
                font-family: Roboto;
                font-style: normal;
                font-weight: bold;
                font-size: 14px;
                line-height: 16px;
                text-align: center;
                width: 100px;

                color: #F11212;
                margin-top: 17px;
            } 

            div{
                width: 20%;
                margin-left: auto;
                margin-right: auto;  
                margin-top: 96px;
            }


        </style>
    </head>
    <body>
        <div>            
            <form action="login.jsp" method="POST">
                <label>Email</label>
                <input type="text" name="email" />
                <label>Senha</label>
                <input type="text" name="password" />
                <input type="button" name="btlogin" value="Login" onclick="validaDados()"/>
                <a href="cadastrouser.html"> 
                    <input type="button" style="float:right" name="btcadastrar" value="Cadastrar" />
                </a                
            </form>
        </div>
        
        
        <script>
             function validaDados(){
               var email = document.getElementsByName("email")[0]; 
               if(email.value === ""){
                  alert("informe email");
                  email.focus();
                  return;
               }
               
               var password = document.getElementsByName("password")[0]; 
               if(password.value === ""){
                  alert("informe a senha");
                  password.focus();
                  return;
               }
               
               document.getElementsByTagName("form")[0].submit();
             }
        </script>            
        
        <%
              String email = request.getParameter("email");
              String password = request.getParameter("password");
              if(email != null && password != null){
                  Usuario usuario = UsuarioDAO.logar(email, password);
                  if(usuario.getNome() != null){
                      session.setAttribute("user", usuario);                                            
                  }else{
                     out.write("<label>Usuario e senha não conferem</label>"); 
                  }
              }
         %>
    </body>
</html>
