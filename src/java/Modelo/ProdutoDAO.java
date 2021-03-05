/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.Conexao;

/**
 *
 * @author vilso
 */
public class ProdutoDAO {
     public static ResultSet consultar(){
        ResultSet rs = null;
        try {            
            String sql = "select id, descricao, preco, qtdeEstoque, observacao from produto";
            PreparedStatement stm = Conexao.getConexao().prepareStatement(sql);
            rs = stm.executeQuery();
            
        } catch (Exception ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
     
     
     
    
     public static ResultSet consultar(String filtro) throws Exception{
        ResultSet rs = null;
        try {            
            String sql = "select id, descricao, preco, qtdeEstoque, "
                    + " observacao from produto "
                    + " where lower(descricao) like lower('%"+ filtro +"%')";
            PreparedStatement stm = Conexao.getConexao().prepareStatement(sql);
            rs = stm.executeQuery();
            
        } catch (Exception ex) {
            throw new Exception(ex.getMessage());
        }
        return rs;
    }
}
