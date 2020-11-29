/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;




import be.Vehiculobe;
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
public class Vehiculobd extends bd{

    public Vehiculobd() {
    }
         public int registrarVehiculo(Vehiculobe e){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = "insert into vehiculo (codigo_vehi,placa_vehi,poliza_vehi,pesoTara_vehi,PesoBruto_vehi,cargoUni_vehi) values (?,?,?,?,?,?)";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, e.getCodigo_vehi());
           pst.setString(2, e.getPlaca_vehi());
           pst.setString(3, e.getPoliza_vehi());
           pst.setFloat(4, e.getPesoTara_vehi());
           pst.setFloat(5, e.getPesoBruto_vehi());
           pst.setFloat(6, e.getCargoUni_vehi());           
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
    public List<Vehiculobe> ListadoVehiculos(){
       List<Vehiculobe> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select codigo_vehi,placa_vehi,poliza_vehi,pesoTara_vehi,PesoBruto_vehi,cargoUni_vehi from vehiculo"  ;
        try {
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Vehiculobe area = new Vehiculobe();
                area.setCodigo_vehi(rs.getString("codigo_vehi"));
                area.setPlaca_vehi(rs.getString("placa_vehi"));
                area.setPoliza_vehi(rs.getString("poliza_vehi"));
                area.setPesoTara_vehi(rs.getFloat("pesoTara_vehi"));
                area.setPesoBruto_vehi(rs.getFloat("PesoBruto_vehi"));
                area.setCargoUni_vehi(rs.getFloat("cargoUni_vehi"));
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Vehiculobd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }      
    public int eliminarVehiculo(String codigo){
       PreparedStatement pst= null;
       int resultado =0;
       try {
           String consulta = " DELETE FROM vehiculo    WHERE codigo_vehi=? ";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, codigo);
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
     public List<Vehiculobe> buscarCliente(String codigo){
       List<Vehiculobe> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select codigo_vehi,placa_vehi,poliza_vehi,pesoTara_vehi,PesoBruto_vehi,cargoUni_vehi from vehiculo where codigo_vehi='"+codigo+"'"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);   
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Vehiculobe area = new Vehiculobe();
                area.setCodigo_vehi(rs.getString("codigo_vehi"));
                area.setPlaca_vehi(rs.getString("placa_vehi"));
                area.setPoliza_vehi(rs.getString("poliza_vehi"));
                area.setPesoTara_vehi( rs.getFloat("pesoTara_vehi"));
                area.setPesoBruto_vehi( rs.getFloat("PesoBruto_vehi"));
                area.setCargoUni_vehi( rs.getFloat("cargoUni_vehi"));
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }
     
     public int actualizar(Vehiculobe e){
        int r=0;
        String sql="update vehiculo set placa_vehi =? ,poliza_vehi= ?, pesoTara_vehi=? , PesoBruto_vehi=?, cargoUni_vehi=? where  codigo_vehi=? ";
        Connection c = new bd().getMysql();
        try{
            PreparedStatement pst = c.prepareCall(sql);
           
            pst.setString(1, e.getPlaca_vehi());
            pst.setString(2, e.getPoliza_vehi());
            pst.setFloat(3, e.getPesoTara_vehi());
            pst.setFloat(4, e.getPesoBruto_vehi());
            pst.setFloat(5, e.getCargoUni_vehi());
             pst.setString(6, e.getCodigo_vehi());
            r = pst.executeUpdate();
            c.close();
        }
        catch(Exception ex){
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }
     public  int  ContarFilas(){
       int filas=0;
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="SELECT count(*) FROM vehiculo"  ;
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
