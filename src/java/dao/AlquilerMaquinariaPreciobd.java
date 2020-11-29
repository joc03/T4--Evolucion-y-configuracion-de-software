/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.AlquilerMaquinariaPreciosbe;
import be.ContenidoAlquilerbe;
import be.RegistrarAlquiler;
import be.suma;
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
public class AlquilerMaquinariaPreciobd extends bd{

    public AlquilerMaquinariaPreciobd() {
    }
    
    public int registrarAlquilerPrecio(AlquilerMaquinariaPreciosbe e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into AlquileMaquinaria (cod_Maquina,Tipo_maquinaria,codCont,dias,cantidad,precio,subtotal) values (?,?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, e.getCodigoMaquina());
           pst.setString(2, e.getTipoMaquina());
           pst.setString(3, e.getCodCont());
           pst.setFloat(4, e.getDias());
           pst.setFloat(5, e.getCantidad());
           pst.setFloat(6, e.getPrecio());  
           pst.setFloat(7, e.getSubtotal());
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
    
    public int RegistrarContenidoAlquiler(ContenidoAlquilerbe e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into ContenidoAlquiler (cod,descripción,codCont,cantidad,dias,precio,subtotal) values (?,?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, e.getCod());
           pst.setString(2, e.getDescripcion());
           pst.setString(3, e.getCodCont());
           pst.setFloat(4, e.getCantidad());
           pst.setFloat(5, e.getDias());  
           pst.setFloat(6, e.getPrecio());
           pst.setFloat(7, e.getSubtotal());
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
    
    public int registrarAlquiler(RegistrarAlquiler e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into RegistrarAlquiler (codigo,codCont,dni,nombre,precio,FechaInicio,FechaFin) values (?,?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, e.getCodigo());
           pst.setString(2, e.getCodCont());
           pst.setString(3, e.getDni());
           pst.setString(4, e.getApellido());
           pst.setFloat(5, e.getPrecio());
           pst.setString(6, e.getFechaInicio());
           pst.setString(7, e.getFechaFin()); 
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
    
    public List<suma> sumatotalALquilerPrecio(){
       List<suma> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select sum(subtotal) from AlquileMaquinaria;"  ;
        try {
              
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                suma area = new suma();                
                area.setSuma(rs.getInt("sum(subtotal)"));                            
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Alquilermabd.class.getName()).log(Level.SEVERE, null, ex);
        }             
       return lista;
    }
    
    public List<AlquilerMaquinariaPreciosbe> ListadoAlquilerPrecio(){
       List<AlquilerMaquinariaPreciosbe> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select cod_Maquina,Tipo_maquinaria,codCont,dias,cantidad,precio,subtotal from AlquileMaquinaria"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);   
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                AlquilerMaquinariaPreciosbe area = new AlquilerMaquinariaPreciosbe();
                area.setCodigoMaquina(rs.getString("cod_Maquina"));
                area.setTipoMaquina(rs.getString("Tipo_maquinaria"));
                area.setCodCont(rs.getString("codCont"));
                
                area.setDias(rs.getFloat("dias"));
                area.setCantidad(rs.getFloat("cantidad"));
                area.setPrecio(rs.getFloat("precio"));
                area.setSubtotal(rs.getFloat("subtotal"));
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }
    
    public List<RegistrarAlquiler> ListadoAlquiler(){
       List<RegistrarAlquiler> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select codigo,codCont,nombre,dni,precio,FechaInicio,FechaFin from RegistrarAlquiler"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);   
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                RegistrarAlquiler area = new RegistrarAlquiler();
                area.setCodigo(rs.getString("codigo"));
                area.setCodCont(rs.getString("codCont"));
                area.setDni(rs.getString("dni"));
                area.setApellido(rs.getString("nombre")); 
                area.setPrecio(rs.getFloat("precio"));
                area.setFechaInicio(rs.getString("FechaInicio"));
                area.setFechaFin(rs.getString("FechaFin"));
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }
    
    public int eliminarAlquilerMaquinariaPrecio(String e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = " DELETE FROM AlquileMaquinaria    WHERE cod_Maquina='"+e+ "'";
           pst = getConexion().prepareStatement(consulta);
           
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
    
    public int eliminarAlquilerAlquiler(String e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = " DELETE FROM RegistrarAlquiler    WHERE codigo='"+e+ "'";
           pst = getConexion().prepareStatement(consulta);
           
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
    
    //Buscar tabla contenido 
    public int EliminarContenido(String cod ){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "DELETE FROM ContenidoAlquiler WHERE cod='"+cod+ "'";
           pst = getConexion().prepareStatement(consulta);           
           if(pst.executeUpdate() == 1){
               return resultado=1;
           }                          
       } catch (SQLException ex) {
           System.err.println("Error"+ ex);
       }finally{
           try {
                
               if(getConexion() != null) getConexion().close();
               if(pst != null) pst.close();
               
           } catch (SQLException ex) {
               System.err.println("Error"+ ex);
           }
       }
       return resultado;
   }
        
    public  int  ContarFilas(){
       int filas=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="SELECT count(*) FROM RegistrarAlquiler"  ;
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
    public  int  ContarFilasContenidoAlquiler(){
       int filas=0;
        Connection c = new bd().getConexion();
        String sql="SELECT count(*) FROM contenidoalquiler"  ;
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
    
    // eliminar contenido de la tabla
    public int EliminarTabla(){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "truncate table AlquileMaquinaria;";
           pst = getConexion().prepareStatement(consulta);
           
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
    
    //contador 
    public int registrarContador(String cod, int e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into contador (cod,cont) values (?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, cod);
           pst.setInt(2, e);
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
    
    public  int  Contador(){
       int filas=0;
        Connection c = new bd().getConexion();
        String sql="SELECT count(*) FROM contador"  ;
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
