/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.Clientebe;
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
 * @author josem
 */
public class Clientebd extends bd{

    public Clientebd() {
    }
     public int registrarCliente(Clientebe e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into cliente (codigo_cli,nombre_cli,apellido_cli,dni_ruc_cli,telefo_cli,direccio_cli,email_cli) values (?,?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, e.getCodigo_cli());
           pst.setString(2, e.getNombre_cli());
           pst.setString(3, e.getApelli_cli());
           pst.setString(4, e.getDniruc_cli());
           pst.setString(5, e.getTelef_cli());
           pst.setString(6, e.getDirrec_cli());
           pst.setString(7, e.getEmail_cli());           
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
     public List<Clientebe> ListadoCliente(){
       List<Clientebe> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select codigo_cli,nombre_cli,apellido_cli,dni_ruc_cli,telefo_cli,direccio_cli,email_cli from cliente"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);   
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Clientebe area = new Clientebe();
                area.setCodigo_cli(rs.getString("codigo_cli"));
                area.setNombre_cli(rs.getString("nombre_cli"));
                area.setApelli_cli(rs.getString("apellido_cli"));
                area.setDniruc_cli(rs.getString("dni_ruc_cli"));
                area.setTelef_cli(rs.getString("telefo_cli"));
                area.setDirrec_cli(rs.getString("direccio_cli"));
                area.setEmail_cli(rs.getString("email_cli"));
                
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }
     public int eliminarCliente(Clientebe e) {
         
        int r=0;
        String sql="delete from cliente where codigo_cli=?";
        Connection c = new bd().getMysql();
        try{
            PreparedStatement pst = c.prepareCall(sql);
            pst.setString(1, e.getCodigo_cli());
            r = pst.executeUpdate();
            c.close();
        }
        catch(Exception ex){
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;         
   }
     
      public List<Clientebe> buscarCliente(String codigo){
       List<Clientebe> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select codigo_cli,nombre_cli,apellido_cli,dni_ruc_cli,telefo_cli,direccio_cli,email_cli from cliente where codigo_cli='"+codigo+"'"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Clientebe area = new Clientebe();
                area.setCodigo_cli(rs.getString("codigo_cli"));
                area.setNombre_cli(rs.getString("nombre_cli"));
                area.setApelli_cli(rs.getString("apellido_cli"));
                area.setDniruc_cli(rs.getString("dni_ruc_cli"));
                area.setTelef_cli(rs.getString("telefo_cli"));
                area.setDirrec_cli(rs.getString("direccio_cli"));
                area.setEmail_cli(rs.getString("email_cli"));
                
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }
      public List<Clientebe> buscarClienteDNI(String dni){
       List<Clientebe> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select codigo_cli,nombre_cli,apellido_cli,dni_ruc_cli,telefo_cli,direccio_cli,email_cli from cliente where dni_ruc_cli='"+dni+"'"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);   
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Clientebe area = new Clientebe();
                area.setCodigo_cli(rs.getString("codigo_cli"));
                area.setNombre_cli(rs.getString("nombre_cli"));
                area.setApelli_cli(rs.getString("apellido_cli"));
                area.setDniruc_cli(rs.getString("dni_ruc_cli"));
                area.setTelef_cli(rs.getString("telefo_cli"));
                area.setDirrec_cli(rs.getString("direccio_cli"));
                area.setEmail_cli(rs.getString("email_cli"));
                
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }
    public int actualizar(Clientebe e){
        int r=0;
        String sql="update cliente set nombre_cli =? ,apellido_cli= ?, dni_ruc_cli=? , telefo_cli=?, direccio_cli=?, email_cli= ? where  codigo_cli=? ";
        Connection c = new bd().getMysql();
        try{
            PreparedStatement pst = c.prepareCall(sql);
           
            pst.setString(1, e.getNombre_cli());
            pst.setString(2, e.getApelli_cli());
            pst.setString(3, e.getDniruc_cli());
            pst.setString(4, e.getTelef_cli());
            pst.setString(5, e.getDirrec_cli());
            pst.setString(6, e.getEmail_cli());
             pst.setString(7, e.getCodigo_cli());
            r = pst.executeUpdate();
            c.close();
        }
        catch(Exception ex){
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }
    public  String  BuscarDNI(String codigo){
       String dni="";
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select dni_ruc_cli from cliente where dni_ruc_cli='"+codigo+"'"  ;
        try {
              
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                             
                dni = rs.getString("dni_ruc_cli");                            
               
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }             
       return dni;
    }
    public  int  ContarFilas(){
       int filas=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="SELECT count(*) FROM cliente"  ;
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
