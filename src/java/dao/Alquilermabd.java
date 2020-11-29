/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.Clientebe;
import be.Maquinariabe;
import be.Alquilermaquinaria;
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
public class Alquilermabd extends bd{

    public Alquilermabd() {
    }
    // COTIZACIÓN TEMPORAL
    public int registrarCotización(Alquilermaquinaria e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into cotizacionMaqui (maquina,codi,dias,cantidad,precio,subtotal) values (?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, e.getMaquina());
           pst.setString(2, e.getCodCont());
           pst.setInt(3, e.getDias());
           pst.setInt(4, e.getCantidad());
           pst.setFloat(5, e.getPrecio());
           pst.setFloat(6, e.getSubtotal());                     
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
    public List<suma> sumatotal(){
       List<suma> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select sum(subtotal) from cotizacionMaqui;"  ;
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
    
    public List<Alquilermaquinaria> ListadoCotizacionAlquiler(){
       List<Alquilermaquinaria> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select maquina,codi,dias,cantidad,precio,subtotal from cotizacionMaqui"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);   
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Alquilermaquinaria area = new Alquilermaquinaria();
                area.setMaquina(rs.getString("maquina"));
                area.setCodCont(rs.getString("codi"));
                area.setDias(rs.getInt("dias"));
                area.setCantidad(rs.getInt("cantidad"));
                area.setPrecio(rs.getFloat("precio"));
                area.setSubtotal(rs.getFloat("subtotal"));
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Alquilermabd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }
    public float buscarPrecioMaquinaria(String nombre){
       float precio=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select precio_Maqui from Maquinaria where nombre_Maqui='"+nombre+"'"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                precio = rs.getFloat("precio_Maqui");
            } else {
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Alquilermabd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return precio;
    }
    
    public int eliminarCotizacioAlquiler(Alquilermaquinaria e) {
         
        int r=0;
        String sql="delete from cotizacionMaqui where maquina=?";
        Connection c = new bd().getMysql();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setString(1, e.getMaquina());
            r = pst.executeUpdate();
            c.close();
        }
        catch(Exception ex){
            Logger.getLogger(Alquilermabd.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;         
   }
    
    //Eliminar Cotizacion
    public int eliminarContenido(String cod){
        int r=0;
        String sql="delete from ContenidoCoAlquiMa where codigo=?";
        Connection c = new bd().getMysql();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setString(1, cod);
            r = pst.executeUpdate();
            c.close();
        }
        catch(SQLException ex){
            Logger.getLogger(Alquilermabd.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;         
   }
    
    // COTIZACIÓN 
    public int RegistrarCotizacion(String cod,String Aten, String teleAten,String Cliente, String TeleClie, String EmailClie, float total, String codigoCont ){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into CotizaciónAlquilerMaquinaria (codigo,Atencion,telefonoAten,Cliente,TelefonoCliente,EmailCliente,total,codigoCont) values (?,?,?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1,cod );
           pst.setString(2,Aten );
           pst.setString(3, teleAten);
           pst.setString(4,Cliente );
           pst.setString(5,TeleClie );
           pst.setString(6, EmailClie);
           pst.setFloat(7,total );
           pst.setString(8,codigoCont );                     
           if(pst.executeUpdate() == 1){
               return resultado=1;
           }                          
       } catch (SQLException ex) {
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
    // Contenido de Cotización
    public int RegistrarContenidoCoAlquiMa(String cod,String codcont, String maquina,int dias, int cant, float pre, float subtotal ){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into ContenidoCoAlquiMa (codigo,codigoConte,maquina,dias,cantidad,precio,subtotal) values (?,?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1,cod );
           pst.setString(2,codcont );
           pst.setString(3, maquina);
           pst.setInt(4,dias );
           pst.setInt(5,cant );
           pst.setFloat(6, pre);
           pst.setFloat(7,subtotal );                   
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
    
    public  int  ContarFilasCotAlquiler(){
       int filas=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="SELECT count(*) FROM CotizaciónAlquilerMaquinaria"  ;
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
    
    public  int  ContarFilasContenidoCotAlquiler(){
       int filas=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="SELECT count(*) FROM ContenidoCoAlquiMa"  ;
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
    // elimianar contenido de la tabla
    
    public int EliminarTabla(){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "truncate table cotizacionMaqui;";
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
    // contador de contenido 
    public int contadorContenido(String cod,String contador ){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into contadorCoAlquiMa (codigo,cont) values (?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1,cod );
           pst.setString(2,contador );                  
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
}
