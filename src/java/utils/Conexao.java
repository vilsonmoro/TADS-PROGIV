/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author vilso
 */
public class Conexao {
 
    private static Connection conexao;
    private static final String URL_CONEXAO = "jdbc:postgresql://localhost/tads";
    private static final String USUARIO = "postgres";
    private static final String SENHA = "postgres"; 
    

    public static Connection getConexao() throws Exception {
        if (conexao == null) {
            try {
                Class.forName("org.postgresql.Driver");
                conexao = DriverManager.getConnection(URL_CONEXAO, USUARIO, SENHA);
            } catch (ClassNotFoundException | SQLException ex) {
                throw new Exception("Conexão inválida " + ex.getMessage());
            }
        }
        return conexao;
    }

}


