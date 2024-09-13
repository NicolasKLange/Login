package utils;

import java.sql.*;

public class Conexao {
   
    public static Connection conectar() {
        Connection con = null;
        
        String url = "jdbc:mysql://localhost:3306/login";
        String user = "nicolas";
        String senha = "password";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url,user,senha);
            
        } catch (SQLException | ClassNotFoundException erro){
            System.out.println("Falha na conexão com o banco de dados " + erro);
            return con;
        }
        
        return con;
    }
}

      