/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controller.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.Conexao;

/**
 *
 * @author vilso
 */
public class UsuarioDAO {
    public static boolean salvar(Usuario user) {
        
        String sql = "insert into usuario(nome, email, password)values(?,?,?)";
        PreparedStatement stm;
        try {
            Connection con = Conexao.getConexao();
            stm = con.prepareStatement(sql);
            stm.setString(1, user.getNome());
            stm.setString(2, user.getEmail());
            stm.setString(3, user.getPassword());
            stm.execute();
        } catch (Exception ex) {
            return false;            
        }        
      return true;  
    }
    
    public static ResultSet consultar(){
        ResultSet rs = null;
        try {            
            String sql = "select id, nome, email from usuario";
            PreparedStatement stm = Conexao.getConexao().prepareStatement(sql);
            rs = stm.executeQuery();
            
        } catch (Exception ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
}
