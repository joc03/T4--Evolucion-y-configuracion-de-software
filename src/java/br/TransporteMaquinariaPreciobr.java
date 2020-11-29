/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.BoletaTransporteMaquinaria;
import be.ContenidoTransportebe;
import be.PedidoTransporteMaquinaria;
import be.RegistrarSolicitudTransporteMaquinaria;
import be.TransporteMaquinariaPreciobe;
import dao.TransporteMaquinariaPreciobd;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author josed
 */
public class TransporteMaquinariaPreciobr {

    public TransporteMaquinariaPreciobr() {
    }
    
    public int registrarTransporteMaquinaria(TransporteMaquinariaPreciobe e) throws SQLException{
     return new TransporteMaquinariaPreciobd().registrarTransporteMaquinariaPrecio(e);
    }
    
    //contenido
    public int registrarContenidoTransporte(ContenidoTransportebe e) throws SQLException{
     return new TransporteMaquinariaPreciobd().RegistrarContenidoTransporte(e);
    }
    
    //Listar contenido
    public List<ContenidoTransportebe> listarContenidoTransporteMaquinaria(String codigo) throws SQLException{
            return new TransporteMaquinariaPreciobd().ListarContenidoTransporteMaquinaria(codigo);
    }
    
     public List<TransporteMaquinariaPreciobe> listarTransporteMaquinaria() throws SQLException{
            return new TransporteMaquinariaPreciobd().ListadoTransporteMaquinaria();
    }
     
     public int eliminarTransporteMaquinaria(String e) throws SQLException{
        return new TransporteMaquinariaPreciobd().eliminarTransporteMaquinaria(e);
    }
     
     public int eliminarContenidoTransporte(String e) throws SQLException{
        return new TransporteMaquinariaPreciobd().eliminarContenidoTransporte(e);
    }
     
     public float listasumaTransporteMaquinaria() throws SQLException{
            return new TransporteMaquinariaPreciobd().sumatotalTransporteMaquinaria();
    }
     
      public int ContarFilas() throws SQLException{
        return new TransporteMaquinariaPreciobd().ContarFilas();
    }
      
      public int ContarFilasContenidoTransporte() throws SQLException{
        return new TransporteMaquinariaPreciobd().ContarFilasContenidoTransporte();
    }
      
      // Eliminar tabla 
      
    public int EliminarTabla() throws SQLException {
        return new TransporteMaquinariaPreciobd().EliminarTabla();
    }
      //Contador
    public int RegistrarContador(String cod,int cont) throws SQLException{
     return new TransporteMaquinariaPreciobd().registrarContador(cod,cont);
    }
    
      public int ContarFilasContadorSoli() throws SQLException{
        return new TransporteMaquinariaPreciobd().ContarFilasContenido();
    }
      
    //Generar Solicitud
    public int registrarSolicitudTransporteMaquinaria(String codigo, String codcont, String dni,String ape,float precio,String fecha,String chofer) throws SQLException{
     return new TransporteMaquinariaPreciobd().registrarSolicitudTransporteMaquinaria(codigo,codcont,dni,ape,precio,fecha,chofer);
    }
    
    public int ContarFilasSolicitud() throws SQLException{
        return new TransporteMaquinariaPreciobd().ContarFilasSolicitud();
    }
    
    public List<RegistrarSolicitudTransporteMaquinaria> listarSolicitudTransporteMaquinaroa() throws SQLException{
            return new TransporteMaquinariaPreciobd().ListarSolicitudTransporteMaquinaria();
    }
    
    public int eliminarSolicitudTransporteMaquinaria(String e) throws SQLException{
        return new TransporteMaquinariaPreciobd().eliminarSolicitudTransporteMaquinaria(e);
    }
    //Registrar pedido 
    public int registrarPedido(String codigo, String dni, String codcont,String ape,float precio,String fecha,String chofer) throws SQLException{
     return new TransporteMaquinariaPreciobd().RegistrarPedido(codigo,dni,codcont,ape,precio,fecha,chofer);
    }
    
    //Listar pedido
    public List<PedidoTransporteMaquinaria> listarPedidoTransporteMaquinaroa() throws SQLException{
            return new TransporteMaquinariaPreciobd().ListarPedidoTransporteMaquinaria();
    }
    //Eliminar Pedido
    public int EliminarPedido(String e) throws SQLException{
        return new TransporteMaquinariaPreciobd().EliminarPedido(e);
    }
    
    //Registrar Boleta Transporte de Maquinaria
    public int registrarBoletaTransporteMaquinaria(String codigo, String dni, String codcont,String ape,float precio,String fecha,String chofer) throws SQLException{
    return new TransporteMaquinariaPreciobd().RegistrarBoletaTransporteMaquinaria(codigo,dni,codcont,ape,precio,fecha,chofer);
    }
    //Contar filas BOleta
    public int FilasBoletaTransporteMaquinaria(){
        return new TransporteMaquinariaPreciobd().ContarFilasBoletaTransporteMaquinaria();
    }
    public List<BoletaTransporteMaquinaria> BuscarBoleta(String codigo) throws SQLException{
            return new TransporteMaquinariaPreciobd().BuscarBolera(codigo);
    }
}
