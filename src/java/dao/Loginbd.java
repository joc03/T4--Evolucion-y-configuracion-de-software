/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.Loginbe;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author josem
 */
public class Loginbd extends bd{
    public int validaracceso(Loginbe e){
        int resultado =0;
        PreparedStatement pst = null;
        ResultSet rs = null;
        try{
            String consulta = "select * from login where usuario=? and password_i=? ";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, e.getUsuario());
            pst.setString(2, e.getPassword());
            rs = pst.executeQuery();
            if(rs.absolute(1)){
                return resultado=1;
            }            
        }
        catch (Exception ex){
            System.err.println("Error " + ex);
            
        }finally{             
            try{
                if(getConexion() != null) getConexion().close();
                if(pst != null) pst.close();
                if (rs != null) rs.close();
            }catch (Exception ex){
                System.err.println("Error" + e);
            }
                    }
        return resultado;
    }
}
