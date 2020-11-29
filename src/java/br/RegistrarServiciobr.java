/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.ContenidoAlquilerbe;
import be.RegistrarServicio;
import dao.RegistrarServiciobd;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author josed
 */
public class RegistrarServiciobr {

    public RegistrarServiciobr() {
    }
    public int registrarServicio(RegistrarServicio e) throws SQLException{
        return new RegistrarServiciobd().RegistrarServicio(e);
    }
    public List<RegistrarServicio> listarAlquilerPrecio() throws SQLException{
      
            return new RegistrarServiciobd().ListarResgistroPedidos();
    }
    public int Filas(){
        return new RegistrarServiciobd().ContarFilas();
    }
    public int eliminarPedido(String e) throws SQLException{
        return new RegistrarServiciobd().eliminarPedido(e);
    }
     public int contador(){
        return new RegistrarServiciobd().Contador();
    }
     public int registrarContador(String cod,int e) throws SQLException{
     return new RegistrarServiciobd().registrarContador(cod,e);
    }
     public List<ContenidoAlquilerbe> ListarContenido(String codigo) throws SQLException{
      
            return new RegistrarServiciobd().ListarContenidoAlquiler(codigo);
    }
}
