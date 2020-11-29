/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.AlquilerMaquinariaPreciosbe;
import be.ContenidoAlquilerbe;
import be.RegistrarAlquiler;
import be.suma;
import dao.AlquilerMaquinariaPreciobd;
import dao.Clientebd;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author josed
 */
public class AlquilerMaquinariaPreciobr {

    public AlquilerMaquinariaPreciobr() {
    }
     public int registrarMaquinaria(AlquilerMaquinariaPreciosbe e) throws SQLException{
     return new AlquilerMaquinariaPreciobd().registrarAlquilerPrecio(e);
    }
     public int registrarContenido(ContenidoAlquilerbe e) throws SQLException{
     return new AlquilerMaquinariaPreciobd().RegistrarContenidoAlquiler(e);
    }
     public int registrarAlquiler(RegistrarAlquiler e) throws SQLException{
     return new AlquilerMaquinariaPreciobd().registrarAlquiler(e);
    }
     public List<AlquilerMaquinariaPreciosbe> listarAlquilerPrecio() throws SQLException{
      
            return new AlquilerMaquinariaPreciobd().ListadoAlquilerPrecio();
    }
     public List<RegistrarAlquiler> listarAlquiler() throws SQLException{
      
            return new AlquilerMaquinariaPreciobd().ListadoAlquiler();
    }
     
     public int eliminarMaquinaria(String e) throws SQLException{
        return new AlquilerMaquinariaPreciobd().eliminarAlquilerMaquinariaPrecio(e);
    }
     public int eliminarAlquiler(String e) throws SQLException{
        return new AlquilerMaquinariaPreciobd().eliminarAlquilerAlquiler(e);
    }
    
     //eliminar codigo de contenido
     public int eliminarContenido(String e) throws SQLException{
        return new AlquilerMaquinariaPreciobd().EliminarContenido(e);
    }
     
     public List<suma> listasumaAlquilerMaquinaria() throws SQLException{
      
            return new AlquilerMaquinariaPreciobd().sumatotalALquilerPrecio();
    }
      public int Filas(){
        return new AlquilerMaquinariaPreciobd().ContarFilas();
    }
      public int FilasContenido(){
        return new AlquilerMaquinariaPreciobd().ContarFilasContenidoAlquiler();
    }
      
      
      // contador
      public int contador(){
        return new AlquilerMaquinariaPreciobd().Contador();
    }
      public int registrarContador(String cod,int e) throws SQLException{
     return new AlquilerMaquinariaPreciobd().registrarContador(cod,e);
    }
      // eliminar la tabla 
      public int elimianarTabla() throws SQLException{
     return new AlquilerMaquinariaPreciobd().EliminarTabla();
    }
}
