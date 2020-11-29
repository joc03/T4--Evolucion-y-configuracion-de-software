/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import be.Maquinariabe;
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

public class Maquinariabd extends bd{

    public Maquinariabd() {
    }
    public int registrarMaquinaria(Maquinariabe e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into Maquinaria (codigo_Maqui,nombre_Maqui,cantidad_Maqui,precio_Maqui,peso_Maqui,dimesio_Maqui) values (?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, e.getCodigo_Maqui());
           pst.setString(2, e.getNombre_Maqui());
           pst.setInt(3, e.getCanti_Maqui());
           pst.setFloat(4, e.getPrecio_Maqui());
           pst.setFloat(5, e.getPeso_Maqui());
           pst.setFloat(6, e.getDimensio_Maqui());           
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
   public List<Maquinariabe> ListadoMaquinaria(){
       List<Maquinariabe> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select codigo_Maqui,nombre_Maqui,cantidad_Maqui,precio_Maqui,peso_Maqui,dimesio_Maqui from Maquinaria"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);   
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Maquinariabe area = new Maquinariabe();
                area.setCodigo_Maqui(rs.getString("codigo_Maqui"));
                area.setNombre_Maqui(rs.getString("nombre_Maqui"));
                area.setCanti_Maqui(rs.getInt("cantidad_Maqui"));
                area.setPrecio_Maqui(rs.getFloat("precio_Maqui"));
                area.setPeso_Maqui(rs.getFloat("peso_Maqui"));
                area.setDimensio_Maqui(rs.getFloat("dimesio_Maqui"));
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Maquinariabd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }
    public int eliminarMaquinaria(Maquinariabe e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = " DELETE FROM Maquinaria    WHERE codigo_Maqui=? ";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, e.getCodigo_Maqui());
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
     public List<Maquinariabe> buscarMaquinaria(String codigo){
       List<Maquinariabe> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select codigo_Maqui,nombre_Maqui,cantidad_Maqui,precio_Maqui,peso_Maqui,dimesio_Maqui from Maquinaria where codigo_Maqui='"+codigo+"'"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);   
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Maquinariabe area = new Maquinariabe();
                area.setCodigo_Maqui(rs.getString("codigo_Maqui"));
                area.setNombre_Maqui(rs.getString("nombre_Maqui"));
                area.setCanti_Maqui(rs.getInt("cantidad_Maqui"));
                area.setPrecio_Maqui(rs.getFloat("precio_Maqui"));
                area.setPeso_Maqui(rs.getFloat("peso_Maqui"));
                area.setDimensio_Maqui(rs.getFloat("dimesio_Maqui"));
               
                
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Maquinariabd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }
     public int actualizar(Maquinariabe e){
        int r=0;
        String sql="update Maquinaria set nombre_Maqui =? ,cantidad_Maqui= ?, precio_Maqui=? , peso_Maqui=?, dimesio_Maqui=? where  codigo_Maqui=? ";
        Connection c = new bd().getMysql();
        try{
            PreparedStatement pst = c.prepareCall(sql);
           
            pst.setString(1, e.getNombre_Maqui());
            pst.setInt(2, e.getCanti_Maqui());
            pst.setFloat(3, e.getPrecio_Maqui());
            pst.setFloat(4, e.getPeso_Maqui());
            pst.setFloat(5, e.getDimensio_Maqui());
            pst.setString(6, e.getCodigo_Maqui());
            r = pst.executeUpdate();
            c.close();
        }
        catch(Exception ex){
            Logger.getLogger(Maquinariabd.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }
     
     
     public float  PrecioMaquina(String codigo){
       float precio=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select precio_Maqui from Maquinaria where codigo_Maqui='"+codigo+"'"  ;
        try {
              
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                             
                precio = rs.getFloat("precio_Maqui");                            
               
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Maquinariabd.class.getName()).log(Level.SEVERE, null, ex);
        }             
       return precio;
    }
    
    public  String  NombreMaquinaria(String codigo){
       String nombre="";
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select nombre_Maqui from Maquinaria where codigo_Maqui='"+codigo+"'"  ;
        try {
              
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                             
                nombre = rs.getString("nombre_Maqui");                            
               
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Maquinariabd.class.getName()).log(Level.SEVERE, null, ex);
        }             
       return nombre;
    }
    public  int  ContarFilas(){
       int filas=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="SELECT count(*) FROM Maquinaria"  ;
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
     
}
