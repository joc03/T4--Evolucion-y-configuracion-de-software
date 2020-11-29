/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;



import be.TransporteMateriales;
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
public class TransporteMaterialesbd extends bd{

    public TransporteMaterialesbd() {
    }
    //Temporal
    public int registrarCotizaciónMateriales(TransporteMateriales e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into cotizacionTransporteMateriales (descrip,codCont,depa,viajes,precio,subtotal) values (?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, e.getDescripcion());
           pst.setString(2, e.getCodCont());
           pst.setString(3, e.getDepartamento());
           pst.setInt(4, e.getViajes());
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
   
    public List<TransporteMateriales> ListadoCotizacionTransporteMateriales(){
       List<TransporteMateriales> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select descrip,codCont,depa,viajes,precio,subtotal from cotizacionTransporteMateriales"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);   
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                TransporteMateriales area = new TransporteMateriales();
                area.setDescripcion(rs.getString("descrip"));
                area.setCodCont(rs.getString("codCont"));
                area.setDepartamento(rs.getString("depa"));
                area.setViajes(rs.getInt("viajes"));
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
    
    public int eliminarCotizacioTransporteMateriales(TransporteMateriales e) {
         
        int r=0;
        String sql="delete from cotizacionTransporteMateriales where descrip=?";
        Connection c = new bd().getMysql();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setString(1, e.getDescripcion());
            r = pst.executeUpdate();
            c.close();
        }
        catch(Exception ex){
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;         
   }
    
    public List<suma> sumatotalTransporteMateriales(){
       List<suma> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select sum(subtotal) from cotizacionTransporteMateriales;"  ;
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
    
    //Contenido 
    public int RegistrarContenido(String codigo,String codcont,String descrip,String depa,int cant,float pre, float subtotal){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into ContenidoCotizacionTransporteMateriales (codigo,codcont,descripcion,depa,cant,precio,subtotal) values (?,?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1,codigo);
           pst.setString(2, codcont );
           pst.setString(3, descrip );
           pst.setString(4,depa);
           pst.setInt(5,cant );
           pst.setFloat(6,pre ); 
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
    
    public  int  ContarContenido(){
       int filas=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="SELECT count(*) FROM ContenidoCotizacionTransporteMateriales"  ;
        try {
              
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){                             
                filas = rs.getInt("count(*)");               
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Maquinariabd.class.getName()).log(Level.SEVERE, null, ex);
        }             
       return filas + 1;
    }
    
    public int eliminarContenido(String codigo) {
         
        int r=0;
        String sql="delete from ContenidoCotizacionTransporteMateriales where codigo=?";
        Connection c = new bd().getMysql();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setString(1, codigo);
            r = pst.executeUpdate();
            c.close();
        }
        catch(Exception ex){
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;         
   }
    //RegistrarCotizacion
    public int RegistrarCotizacionTransporteMaterial_O(String codigo,String codcont,String Aten,String teleAten,String clie,String teleClie, String emaiCli, float suma){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into CotizacionTransporteMateriales_O (codigo,codcont,Aten,teleAten,Cliente,teleClie,emailCli,suma) values (?,?,?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1,codigo);
           pst.setString(2, codcont );
           pst.setString(3, Aten );
           pst.setString(4,teleAten);
           pst.setString(5,clie);
           pst.setString(6,teleClie);
           pst.setString(7,emaiCli);
           pst.setFloat(8,suma ); 
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
    
    public  int  ContarCotizaTransporteMaqui(){
       int filas=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="SELECT count(*) FROM CotizacionTransporteMateriales_O"  ;
        try {
              
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){                             
                filas = rs.getInt("count(*)");               
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Maquinariabd.class.getName()).log(Level.SEVERE, null, ex);
        }             
       return filas + 1;
    }
    
    public int EliminarTabla(){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "truncate table cotizacionTransporteMateriales;";
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
}
