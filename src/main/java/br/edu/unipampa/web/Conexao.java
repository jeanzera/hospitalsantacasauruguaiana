package br.edu.unipampa.web;

import java.sql.*;

public class Conexao {

    private Conexao() {
    }

    private static Connection instancia;

    public static synchronized Connection criaConexao() {
        if (instancia == null) {

            try {
                DriverManager.registerDriver(new com.mysql.jdbc.Driver()); 
                instancia = DriverManager.getConnection("jdbc:mysql://localhost:3306/coletadados", "root", "");
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return instancia;
    }

}
