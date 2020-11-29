/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.Clientebe;
import be.Maquinariabe;
import dao.Clientebd;
import dao.Maquinariabd;
import dao.Vehiculobd;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author josem
 */
public class Maquinariabr {
    
    public Maquinariabr() {
    }
    
    public int registrarMaquinaria(Maquinariabe e) throws SQLException{
        return new Maquinariabd().registrarMaquinaria(e);
    }
    
    public List<Maquinariabe> listarCliente() throws SQLException{
      
            return new Maquinariabd().ListadoMaquinaria();
    }
        
    public int eliminarMaquinaria(Maquinariabe e) throws SQLException{
        return new Maquinariabd().eliminarMaquinaria(e);
    }
         
    public List<Maquinariabe> BuscarMaquinaria(String codigo) throws SQLException{
      
            return new Maquinariabd().buscarMaquinaria(codigo);
    }
    
    public int actualizar(Maquinariabe e){
        return new Maquinariabd().actualizar(e);
    }
    
     public float BuscarPrecio(String codigo){
        return new Maquinariabd().PrecioMaquina(codigo);
    }
          
     public String BuscarNombre(String codigo){
        return new Maquinariabd().NombreMaquinaria(codigo);
    }
     public int Filas(){
        return new Maquinariabd().ContarFilas();
    }
}
