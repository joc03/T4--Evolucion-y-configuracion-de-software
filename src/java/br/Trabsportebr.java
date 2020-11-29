/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;


import be.TransporteMaquinaria;
import be.suma;
import dao.Transportemaquibd;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author josed
 */
public class Trabsportebr {

    public Trabsportebr() {
    }
      public int registrarCotizacionTransporte(TransporteMaquinaria e) throws SQLException{
        return new Transportemaquibd().registrarCotizaciónTransporte(e);
    }
    public List<TransporteMaquinaria> listarCotizacionTransporte() throws SQLException{
      
            return new Transportemaquibd().ListadoCotizacionTransporte();
    }
    public int eliminarCotizacionTransporte(TransporteMaquinaria e) throws SQLException{
        return new Transportemaquibd().eliminarCotizacioTransporte(e);
    }
    public List<suma> listasumaCotizacionTransporte() throws SQLException{
      
            return new Transportemaquibd().sumatotalTransporte();
    }
    // contenido
     public int RegisrarContenido(String codigo,String codcont,String maq,String depa, int cant,float pre,float subtotal) throws SQLException{
        return new Transportemaquibd().registrarCoontenidoCotTransMaq(codigo,codcont,maq,depa,cant,pre,subtotal);
    }
     public int eliminarContenido(String codigo) throws SQLException{
        return new Transportemaquibd().eliminarContenido(codigo);
    }
    
    public int FilasContenido(){
        return new Transportemaquibd().ContarFilasContenido();
    }
    public int EliminarTabla(){
        return new Transportemaquibd().EliminarTabla();
    }
    //Cotizacio
     public int RegisrarCotizacionTransMaqO(String codigo,String codcont,String Aten,String teleAten,String cliente, String teleclie,String emaiClie,float suma) throws SQLException{
        return new Transportemaquibd().registrarCotizacioTransMaqO(codigo,codcont,Aten,teleAten,cliente,teleclie,emaiClie,suma);
    }
    public int FilasCotizacioTransporteO(){
        return new Transportemaquibd().ContarFilasCotizacionTransMaqO();
    }
    
}
