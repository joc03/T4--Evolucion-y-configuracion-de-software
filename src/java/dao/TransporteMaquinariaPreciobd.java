/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.BoletaTransporteMaquinaria;
import be.ContenidoTransportebe;
import be.PedidoTransporteMaquinaria;
import be.RegistrarSolicitudTransporteMaquinaria;
import be.TransporteMaquinariaPreciobe;
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
public class TransporteMaquinariaPreciobd extends bd{

    public TransporteMaquinariaPreciobd() {
    }
    //tabla temporal
    public int registrarTransporteMaquinariaPrecio(TransporteMaquinariaPreciobe e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into TransporteMaquinaria (codigo,codCont,placaVehiculo,maquina,departamento,cantidad,precio,subtotal) values (?,?,?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, e.getCodigo());
           pst.setString(2, e.getCodCont());
           pst.setString(3, e.getPlacaVehiculo());
           pst.setString(4, e.getMaquina());
           pst.setString(5, e.getDepartamento());
           pst.setInt(6,e.getCantidad());
           pst.setFloat(7, e.getPrecio());  
           pst.setFloat(8, e.getSubtotal());
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
  
    
    public float sumatotalTransporteMaquinaria(){
      float precio=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select sum(subtotal) from TransporteMaquinaria;"  ;
        try {
              
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                                
                precio=rs.getInt("sum(subtotal)");                            
                
               
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Alquilermabd.class.getName()).log(Level.SEVERE, null, ex);
        }             
       return precio;
    }
    public List<TransporteMaquinariaPreciobe> ListadoTransporteMaquinaria(){
       List<TransporteMaquinariaPreciobe> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select codigo,codCont,placaVehiculo,maquina,departamento,cantidad,precio,subtotal from TransporteMaquinaria"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);   
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){ 
                TransporteMaquinariaPreciobe area = new TransporteMaquinariaPreciobe();
                area.setCodigo(rs.getString("codigo"));
                area.setCodCont(rs.getString("codCont"));
                 area.setPlacaVehiculo(rs.getString("placaVehiculo"));
                area.setMaquina(rs.getString("maquina"));
                area.setDepartamento(rs.getString("departamento"));
                area.setCantidad(rs.getInt("cantidad"));
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
    
    public int eliminarTransporteMaquinaria(String e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = " DELETE FROM TransporteMaquinaria    WHERE codigo='"+e+ "'";
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
    public  int  ContarFilas(){
       int filas=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="SELECT count(*) FROM TransporteMaquinaria"  ;
        try {
              
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                             
                filas = rs.getInt("count(*)");                            
               
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Alquilermabd.class.getName()).log(Level.SEVERE, null, ex);
        }             
       return filas;
    }
    
    //contenido
    public int RegistrarContenidoTransporte(ContenidoTransportebe e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into ContenidoTransporte (cod,codCont,vehiculo,maquina,depa,cant,precio,subtotal) values (?,?,?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, e.getCodigo());
           pst.setString(2, e.getCodCont());
           pst.setString(3, e.getVehiculo());
           pst.setString(4, e.getMaquina());
           pst.setString(5, e.getDepa());
           pst.setInt(6, e.getCantidad());  
           pst.setFloat(7, e.getPrecio());
           pst.setFloat(8, e.getSubtotal());
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
    //listar contenido 
    public List<ContenidoTransportebe> ListarContenidoTransporteMaquinaria( String codigo){
       List<ContenidoTransportebe> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select cod,codCont,vehiculo,maquina,depa,cant,precio,subtotal from ContenidoTransporte where codCont='"+codigo+"' "  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);   
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                ContenidoTransportebe area = new ContenidoTransportebe();
                area.setCodigo(rs.getString("cod"));
                area.setCodCont(rs.getString("codCont"));
                area.setVehiculo(rs.getString("vehiculo"));
                area.setMaquina(rs.getString("maquina")); 
                area.setDepa(rs.getString("depa"));
                area.setCantidad(rs.getInt("cant"));
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
    
    public int eliminarContenidoTransporte(String e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = " DELETE FROM ContenidoTransporte    WHERE cod='"+e+ "'";
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
   
    ///////
    public int EliminarTabla(){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "truncate table TransporteMaquinaria;";
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
           String consulta = "insert into contadorTransporte (cod,cont) values (?,?)";
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
   
   public  int  ContarFilasContenidoTransporte(){
       int filas=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="SELECT count(*) FROM ContenidoTransporte"  ;
        try {
              
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                           
                filas = rs.getInt("count(*)");                            
               
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Alquilermabd.class.getName()).log(Level.SEVERE, null, ex);
        }             
       return filas+1;
    }
   
   public  int  ContarFilasContenido(){
       int filas=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="SELECT count(*) FROM contadorTransporte"  ;
        try {
              
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                             
                filas = rs.getInt("count(*)");                            
               
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Alquilermabd.class.getName()).log(Level.SEVERE, null, ex);
        }             
       return filas+1;
    }
    
   //Registrar la solicitud
   public int registrarSolicitudTransporteMaquinaria(String codigo, String codcont, String dni,String apellido,float precio,String Fecha,String chofer){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into SolicitudTransporteMaquinaria (codigo,codcont,dni,apellido,precio,FechaTransp,Chofer) values (?,?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, codigo);
           pst.setString(2, codcont);
           pst.setString(3, dni);
           pst.setString(4, apellido);
           pst.setFloat(5, precio);
           pst.setString(6, Fecha);
           pst.setString(7, chofer);
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
   
   public  int  ContarFilasSolicitud(){
       int filas=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="SELECT count(*) FROM SolicitudTransporteMaquinaria"  ;
        try {
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){ 
                filas = rs.getInt("count(*)");  
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Alquilermabd.class.getName()).log(Level.SEVERE, null, ex);
        }             
       return filas+1;
    }
     
   public List<RegistrarSolicitudTransporteMaquinaria> ListarSolicitudTransporteMaquinaria(){
       List<RegistrarSolicitudTransporteMaquinaria> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select codigo,codcont,dni,apellido,precio,FechaTransp,Chofer from SolicitudTransporteMaquinaria"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);   
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                RegistrarSolicitudTransporteMaquinaria area = new RegistrarSolicitudTransporteMaquinaria();
                area.setCodigo(rs.getString("codigo"));
                area.setCodcont(rs.getString("codcont"));
                area.setDni(rs.getString("dni"));
                area.setApellido(rs.getString("apellido")); 
                area.setPrecio(rs.getFloat("precio"));
                area.setFecha(rs.getString("FechaTransp"));
                area.setChofer(rs.getString("Chofer"));
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }
    
   //Eliminar Solicitud
   public int eliminarSolicitudTransporteMaquinaria(String e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = " DELETE FROM SolicitudTransporteMaquinaria    WHERE codigo='"+e+ "'";
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
    
   // Registrar Pedido
   public int RegistrarPedido(String codigo,String DNI, String codCont, String apellido,float precio,String fecha,String chofer){
       PreparedStatement pst= null;
       int resultado =0;
       try {
            String consulta = "insert into PedidoTransporteMaquinaria (codigo,dni,codCont,Ape,precio,fecha,chofer) values (?,?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, codigo);
            pst.setString(2, DNI);
            pst.setString(3, codCont);
            pst.setString(4, apellido);
            pst.setFloat(5, precio);
            pst.setString(6, fecha);
            pst.setString(7, chofer);        
            
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
   // Listar pedido
   public List<PedidoTransporteMaquinaria> ListarPedidoTransporteMaquinaria(){
       List<PedidoTransporteMaquinaria> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select codigo,dni,codCont,Ape,precio,fecha,chofer from PedidoTransporteMaquinaria"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);   
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                PedidoTransporteMaquinaria area = new PedidoTransporteMaquinaria();
                area.setCodigo(rs.getString("codigo"));
                area.setDni(rs.getString("dni"));
                area.setCodcont(rs.getString("codCont"));
                area.setApellido(rs.getString("Ape")); 
                area.setPrecio(rs.getFloat("precio"));
                area.setFecha(rs.getString("fecha"));
                area.setChofer(rs.getString("chofer"));
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }
   
   //Eliminar pedido
   public int EliminarPedido(String e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = " DELETE FROM PedidoTransporteMaquinaria    WHERE codigo='"+e+ "'";
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
   
   //RegistrarBoleta
   public int RegistrarBoletaTransporteMaquinaria(String codigo,String DNI, String codCont, String apellido,float precio,String fecha,String chofer){
       PreparedStatement pst= null;
       int resultado =0;
       try {
            String consulta = "insert into BoletaTransporteMaquinaria (codigo,dni,codCont,Ape,precio,fecha,chofer) values (?,?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, codigo);
            pst.setString(2, DNI);
            pst.setString(3, codCont);
            pst.setString(4, apellido);
            pst.setFloat(5, precio);
            pst.setString(6, fecha);
            pst.setString(7, chofer);        
            
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
    
   //contar filas boleta
   public  int  ContarFilasBoletaTransporteMaquinaria(){
       int filas=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="SELECT count(*) FROM BoletaTransporteMaquinaria"  ;
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
   
   //Buscar Boleta
   public List<BoletaTransporteMaquinaria> BuscarBolera(String codigo){
       List<BoletaTransporteMaquinaria> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select codigo,dni,codCont,Ape,precio,fecha,chofer from BoletaTransporteMaquinaria where codCont='"+codigo+"'"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                BoletaTransporteMaquinaria area = new BoletaTransporteMaquinaria();
                area.setCodigo(rs.getString("codigo"));
                area.setDni(rs.getString("dni"));
                area.setCodCont(rs.getString("codCont"));
                area.setApellido(rs.getString("Ape"));
                area.setPrecio(rs.getFloat("precio"));
                area.setFecha(rs.getString("fecha"));
                area.setChofer(rs.getString("chofer"));
                
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }
   
  
}
