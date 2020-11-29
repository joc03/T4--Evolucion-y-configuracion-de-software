/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import be.ContenidoAlquilerbe;
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
public class RegistrarServiciobd extends bd{

    public RegistrarServiciobd() {
        
    }
    public int RegistrarServicio(RegistrarServicio e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into RegistrarPedido (cod,tipoPedido,dni,codCont,nombre,pre,fechI,FechaF) values (?,?,?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, e.getCodigo());
           pst.setString(2, e.getTipopedido());
           pst.setString(3, e.getDni());
           pst.setString(4, e.getCodCont());
           pst.setString(5, e.getNombre());
           pst.setFloat(6, e.getPrecio());
           pst.setString(7, e.getFechaI());  
           pst.setString(8, e.getFechaF());
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
    public List<RegistrarServicio> ListarResgistroPedidos(){
       List<RegistrarServicio> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select cod,tipoPedido,dni,codCont,nombre,pre,fechI,FechaF from RegistrarPedido"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);   
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                RegistrarServicio area = new RegistrarServicio();
                area.setCodigo(rs.getString("cod"));
                area.setTipopedido(rs.getString("tipoPedido"));
                area.setDni(rs.getString("dni"));
                area.setCodCont(rs.getString("codCont"));
                area.setNombre(rs.getString("nombre"));
                area.setPrecio(rs.getFloat("pre"));
                area.setFechaI(rs.getString("fechI"));
                area.setFechaF(rs.getString("FechaF"));
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(RegistrarServiciobd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }
    
    public  int  ContarFilas(){
       int filas=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="SELECT count(*) FROM RegistrarPedido"  ;
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
    public int eliminarPedido(String e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = " DELETE FROM RegistrarPedido    WHERE cod='"+e+ "'";
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
    public  int  Contador(){
       int filas=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="SELECT count(*) FROM contadorPedido"  ;
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
    
    public int registrarContador(String cod, int e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into contadorPedido (cod,cont) values (?,?)";
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
    
   //listar contenido
    public List<ContenidoAlquilerbe> ListarContenidoAlquiler(String codigo){
       List<ContenidoAlquilerbe> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select cod,descripción,codCont,cantidad,dias,precio,subtotal from ContenidoAlquiler where  codCont='"+codigo + "'"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);   
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                ContenidoAlquilerbe area = new ContenidoAlquilerbe();
                area.setCod(rs.getString("cod"));
                area.setDescripcion(rs.getString("descripción"));
                area.setCodCont(rs.getString("codCont"));
                area.setCantidad(rs.getInt("cantidad"));
                area.setDias(rs.getInt("dias"));
                area.setPrecio(rs.getFloat("precio"));
                area.setSubtotal(rs.getFloat("subtotal"));
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(RegistrarServiciobd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }
}
