/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.mysql.cj.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author josed
 */

        
public class bd {
    private String USERNAME = "root";
    private String PASSWORD= "patchcipriano17";
    private String HOST = "localhost";
    private String PORT = "3306";
    private String CLASSNAME = "com.mysql.jdbc.Driver";
    private String URL ="jdbc:mysql://localhost:3306/IlcheV2?useTimezone=true&serverTimezone=UTC" ;
    private Connection con;

    public bd() {
        try{
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);            
        } catch (ClassNotFoundException e){
            System.err.println("ERROR" + e);
        }
        catch(SQLException e){
            System.err.println("Error"+e);
        }
    }
    public Connection getMysql() {
        Connection c = null;
        try {
            DriverManager.registerDriver(new Driver());
        String urlbd = "jdbc:mysql://localhost:3306/IlcheV2?useTimezone=true&serverTimezone=UTC";
        String usuario = "root";
        String contra = "patchcipriano17";
        c =  DriverManager.getConnection(urlbd,usuario,contra);
        } catch (SQLException ex) {
            Logger.getLogger(bd.class.getName()).log(Level.SEVERE, null, ex);
        }
        return c;
    }
     public Connection getConexion(){
        return con;
    }
     
}