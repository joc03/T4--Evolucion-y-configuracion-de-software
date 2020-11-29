/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.Boletabe;
import be.RegistrarServicio;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author josed
 */
public class Boletabd extends bd{

    public Boletabd() {
    }
     public int RegistrarBoleta(Boletabe e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into boleta (codigo,dniCliente,codCont,nombre,PrecioT,FechaI,FechaF,TipoPed) values (?,?,?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, e.getCodigo());
           pst.setString(2, e.getDniCliente());
           pst.setString(3, e.getCodCont());
           pst.setString(4, e.getNombre());
           pst.setFloat(5, e.getPrecio());
           pst.setString(6, e.getFechaI());
           pst.setString(7, e.getFechaF());  
           pst.setString(8, e.getTipoPed());
           if(pst.executeUpdate() == 1){
               return resultado=1;
           }                          
       } catch (Exception ex) {
       }finally{
           
           try {
               if(getConexion() != null) getConexion().close();
               if(pst != null) pst.close();
               
           } catch (Exception ex) {
               System.err.println("Error"+ ex);
           }
       }       
       return resultado;
   }
    
    
    public  int  ContarFilas(){
       int filas=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="SELECT count(*) FROM boleta"  ;
        try {
              
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                filas = rs.getInt("count(*)");
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Boletabd.class.getName()).log(Level.SEVERE, null, ex);
        }             
       return filas + 1;
    }
    
}
