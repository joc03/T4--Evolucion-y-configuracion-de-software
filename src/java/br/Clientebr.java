/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.Clientebe;
import dao.Clientebd;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author josem
 */
public class Clientebr {

    public Clientebr() {
    }
    public int registrarCliente(Clientebe e) throws SQLException{
        return new Clientebd().registrarCliente(e);
    }
    public List<Clientebe> listarCliente() throws SQLException{
      
            return new Clientebd().ListadoCliente();
    }
     public int eliminarCliente(Clientebe e) throws SQLException{
        return new Clientebd().eliminarCliente(e);
    }
    public List<Clientebe> BuscarCliente(String codigo) throws SQLException{
      
            return new Clientebd().buscarCliente(codigo);
    }
    public List<Clientebe> BuscarClienteDNI(String DNI) throws SQLException{
      
            return new Clientebd().buscarClienteDNI(DNI);
    }
    public int actualizar(Clientebe e){
        return new Clientebd().actualizar(e);
    }
    public String BuscarDNI(String codigo){
        return new Clientebd().BuscarDNI(codigo);
    }
    public int Filas(){
        return new Clientebd().ContarFilas();
    }
}
