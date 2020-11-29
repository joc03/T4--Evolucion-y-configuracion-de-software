/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.AlquilerMaquinariaPreciosbe;
import be.Departamentobe;
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
public class Departamentobd extends bd{

    public Departamentobd() {
    }
    
    public List<Departamentobe> ListadoAlquilerPrecio(){
       List<Departamentobe> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select codigo,departamento,Precio from PrecioTransporte"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);   
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Departamentobe area = new Departamentobe();
                area.setCodigo(rs.getString("codigo"));
                area.setDepartamento(rs.getString("departamento"));
                area.setPrecio(rs.getFloat("Precio"));
                
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }
    public  String  NombreDepartamento(String codigo){
       String nombre="";
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select departamento from PrecioTransporte where codigo='"+codigo+"'"  ;
        try {
              
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                             
                nombre = rs.getString("departamento");
               
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Alquilermabd.class.getName()).log(Level.SEVERE, null, ex);
        }             
       return nombre;
    }
    public  float  PrecioDepartamento(String codigo){
       float precio=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select Precio from PrecioTransporte where codigo='"+codigo+"'"  ;
        try {
              
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                             
                precio =rs.getFloat("Precio");                            
               
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Alquilermabd.class.getName()).log(Level.SEVERE, null, ex);
        }             
       return precio;
    }
    public int actualizar(Departamentobe e){
        int r=0;
        String sql="update PrecioTransporte set codigo =? ,departamento= ?, Precio=?  where  codigo=? ";
        Connection c = new bd().getMysql();
        try{
            PreparedStatement pst = c.prepareCall(sql);
           
            pst.setString(1, e.getCodigo());
            pst.setString(2, e.getDepartamento());
            pst.setFloat(3, e.getPrecio());
            pst.setString(4, e.getCodigo());
            r = pst.executeUpdate();
            c.close();
        }
        catch(Exception ex){
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }
}
