<%-- 
    Document   : cadastrovenda
    Created on : 02/03/2021, 10:24:49
    Author     : vilso
--%>

<%@page import="Modelo.ProdutoDAO"%>
<%@page import="java.sql.ResultSet"%>
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
                
                
            <form action="vendaajax.jsp" method="POST">
            <div>
                <input type="text" name="filtro" />
                <input type="submit" value="Pesquisar"/>
                <table>
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Descrição</th>
                            <th>Preço</th>
                            <th>Qtde estoque</th>
                            <th>Observação</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            String filtro = request.getParameter("filtro");
                            if (filtro == null) {
                                filtro = "";
                            }
                            ResultSet rs = ProdutoDAO.consultar(filtro);
                            while (rs.next()) {
                                out.write("<tr>");
                                out.write("<td>" + rs.getString("id") + "</td>");
                                out.write("<td>" + rs.getString("descricao") + "</td>");
                                out.write("<td>" + rs.getString("preco") + "</td>");
                                out.write("<td>" + rs.getString("qtdeEstoque") + "</td>");
                                out.write("<td>" + rs.getString("observacao") + "</td>");
                                /*out.write("<td><a href=editauser.jsp?iduser=" + rs.getString("id") + ">Editar</a></td>");
                                out.write("<td><a href=excluiruser.jsp?iduser=" + rs.getString("id") + ">Excluir</a></td>");
                                 */
                                out.write("</tr>");
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </form>
    </body>
</html>
