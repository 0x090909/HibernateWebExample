/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package it.gutzu.db;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.transaction.Transaction;

/**
 *
 * @author FSEVERI\gutu2891
 */
public class Database {

    private static final String DB_DRIVER = "oracle.jdbc.driver.MysqlDriver";
    private static final String DB_CONNECTION = "jdbc:mysql://10.0.1.252/5ib12";
    private static final String DB_USER = "5ib12";
    private static final String DB_PASSWORD = "5IB12";

    public static Connection conn = null;
    private Statement stmt = null;

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static Connection connect() {
        try {
            conn = DriverManager.getConnection(DB_CONNECTION, DB_USER, DB_PASSWORD);
        } catch (SQLException ex) {
           throw new IllegalArgumentException("Fuck you bitch!");
        }
        return conn;
    }
    
    public List<Cliente> getClienti(){
         try {
            String myStatement = "select * from clienti";
            PreparedStatement statement;
            Connection c = connect();
            statement = c.prepareStatement(myStatement);
            Transaction tx;
            ResultSet rs = statement.executeQuery();
              List<Cliente> list = new ArrayList<Cliente>();
            while(rs.next()){
                String n = rs.getString("nome");
                String piva = rs.getString("piva");
                String cognome = rs.getString("cognome");
                String indirizzo = rs.getString("indirizzo");
                list.add(new Cliente(n , cognome, indirizzo, piva));
                
               
            }
             return list;
        } catch (SQLException ex) {
            
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        } 

        return null;
    }
    
    public int aggiornaCliente(String nome, String cog, String ind, String piva) throws SQLException{
        
         Connection c = connect();
         try {
            String myStatement = "update cliente set nome = ?, cognome = ?, indirizzo = ? where piva = ?";
            PreparedStatement statement;
            statement = c.prepareStatement(myStatement);
            statement.setString(1, nome);
            statement.setString(2, cog);
            statement.setString(3, ind);
            statement.setString(4, piva);
            int rs = statement.executeUpdate();
            c.commit();
            return rs;
        } catch (SQLException ex) {
            c.rollback();
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        } 
        return -1;
    }

    public String login(String user, String password) {

        try {
            String myStatement = "select * from utenti where username = ? and password = md5(?)";
            PreparedStatement statement;
            Connection c = connect();
            statement = c.prepareStatement(myStatement);
            statement.setString(1, user);
            statement.setString(2, password);
           
            ResultSet rs = statement.executeQuery();
             
            while(rs.next()){
                String n = rs.getString("nome");
                return n;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        } 


        return null;
    }

}
