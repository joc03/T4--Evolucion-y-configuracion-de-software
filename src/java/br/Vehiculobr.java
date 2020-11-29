/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.Clientebe;
import be.Vehiculobe;
import dao.Clientebd;
import dao.Vehiculobd;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author josem
 */
public class Vehiculobr {

    public Vehiculobr() {
    }
    public int registrarVehiculo(Vehiculobe e) throws SQLException{
        return new Vehiculobd().registrarVehiculo(e);
    }
    public List<Vehiculobe> listarVehiculo() throws SQLException{
      
            return new Vehiculobd().ListadoVehiculos();
    }
    public int eliminarMaquinaria(String c) throws SQLException{
        return new Vehiculobd().eliminarVehiculo(c);
    }
    public List<Vehiculobe> BuscarCliente(String codigo) throws SQLException{
      
            return new Vehiculobd().buscarCliente(codigo);
    }
    public int actualizar(Vehiculobe e){
        return new Vehiculobd().actualizar(e);
    }
    public int Filas(){
        return new Vehiculobd().ContarFilas();
    }
}
