/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;
import be.TransporteMateriales;
import be.suma;
import dao.TransporteMaterialesbd;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author josed
 */
public class Materialesbr {

    public Materialesbr() {
    }
    public int registrarCotizacionTransporteMateriales(TransporteMateriales e) throws SQLException{
        return new TransporteMaterialesbd().registrarCotizaciónMateriales(e);
    }
    public List<TransporteMateriales> listarCotizacionTransporteMateriales() throws SQLException{
      
            return new TransporteMaterialesbd().ListadoCotizacionTransporteMateriales();
    }
    public int eliminarCotizacionTransporteMateriales(TransporteMateriales e) throws SQLException{
        return new TransporteMaterialesbd().eliminarCotizacioTransporteMateriales(e);
    }
    public List<suma> listasumaCotizacionTransporteMateriales() throws SQLException{
      
            return new TransporteMaterialesbd().sumatotalTransporteMateriales();
    }
    //contenido
    public int RegiatrarContenido(String codigo,String codcont,String descrip,String depa,int cant,float pre, float subtotal) throws SQLException{
        return new TransporteMaterialesbd().RegistrarContenido(codigo,codcont,descrip,depa,cant,pre,subtotal);
    }
    public int ContarFilaContenido() throws SQLException{
        return new TransporteMaterialesbd().ContarContenido();
    }
     public int eliminarContenidoTransporteMateriales(String codigo) throws SQLException{
        return new TransporteMaterialesbd().eliminarContenido(codigo);
    }
     public int eliminarTabla() throws SQLException{
        return new TransporteMaterialesbd().EliminarTabla();
    }
    //Registrar cotizacion
    public int RegiatrarCotizacionTransporteMateriales_o(String codigo,String codcont,String Aten,String teleAten,String clie,String teleClie, String emaiCli, float suma) throws SQLException{
        return new TransporteMaterialesbd().RegistrarCotizacionTransporteMaterial_O(codigo,codcont,Aten,teleAten,clie,teleClie,emaiCli,suma);
    }
    public int ContarFilaCotizacionTranspor_o() throws SQLException{
        return new TransporteMaterialesbd().ContarCotizaTransporteMaqui();
    }
    
}
