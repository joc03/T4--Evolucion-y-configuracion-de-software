/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.Clientebe;
import be.GenerarGuiabe;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author josed
 */
public class GenerarGuiabd extends bd{

    public GenerarGuiabd() {
    }
    public int registrarGuia(GenerarGuiabe e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into GenerarGuia (cod,motivoTras,DireccionPar,DireccionLle,FechaEmi,nombre,apellido,rucDNI,descrip,cantidad,peso) values (?,?,?,?,?,?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, e.getCodigo());
           pst.setString(2, e.getMotivoTras());
           pst.setString(3, e.getDirPar());
           pst.setString(4, e.getDirLle());
           pst.setString(5, e.getFechaEmi());
           pst.setString(6, e.getNombre());
           pst.setString(7, e.getApellido());
           pst.setString(8, e.getRucDNI());
           pst.setString(9, e.getDescrip()); 
           pst.setInt(10, e.getCantidad()); 
           pst.setFloat(11, e.getPeso()); 
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
        String sql="SELECT count(*) FROM GenerarGuia"  ;
        try {
              
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                             
                filas = rs.getInt("count(*)");                            
               
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }             
       return filas + 1;
    }
}
