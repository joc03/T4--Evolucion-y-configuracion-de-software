/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import be.Choferesbe;
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
 * @author josed
 */
public class Choferesbd {

    public Choferesbd() {
    }
    public List<Choferesbe> ListadoChoferes(){
       List<Choferesbe> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select chof_cod,chof_nom,chof_ape,chof_dni,chof_cod_lic from CE_chofer"  ;
        try {
            
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Choferesbe area = new Choferesbe();
                area.setCodigo(rs.getString("chof_cod"));
                area.setNombre(rs.getString("chof_nom"));
                area.setApellido(rs.getString("chof_ape"));
                area.setDni(rs.getString("chof_dni"));
                area.setCodigo_licencia(rs.getString("chof_cod_lic"));
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Maquinariabd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }
    
    public List<Choferesbe> buscarChofer(String codigo){
       List<Choferesbe> lista = new ArrayList();
        Connection c = new bd().getConexion();
        // 3. Enviar sentecia sql a ejecutar
        String sql="select chof_cod,chof_nom,chof_ape,chof_dni,chof_cod_lic from CE_chofer where chof_cod='"+codigo+"'"  ;
        try {
            //Statement st = c.createStatement();
            //ResultSet rs=st.executeQuery(sql);   
            PreparedStatement pst = c.prepareCall(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Choferesbe area = new Choferesbe();
                area.setCodigo(rs.getString("chof_cod"));
                area.setNombre(rs.getString("chof_nom"));
                area.setApellido(rs.getString("chof_ape"));
                area.setDni(rs.getString("chof_dni"));
                area.setCodigo_licencia(rs.getString("chof_cod_lic"));
                lista.add(area);
            }
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(Clientebd.class.getName()).log(Level.SEVERE, null, ex);
        }
             
       return lista;
    }
}
