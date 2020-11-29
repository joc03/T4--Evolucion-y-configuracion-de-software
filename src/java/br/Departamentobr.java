/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.Departamentobe;
import dao.Departamentobd;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author josed
 */
public class Departamentobr {

    public Departamentobr() {
    }
    public List<Departamentobe> listarCliente() throws SQLException{
      
            return new Departamentobd().ListadoAlquilerPrecio();
    }
    public float BuscarPrecio(String codigo){
        return new Departamentobd().PrecioDepartamento(codigo);
    }
    public String BuscarDepartamento(String codigo){
        return new Departamentobd().NombreDepartamento(codigo);
    }
    public int ActualizarDepartamento(Departamentobe e){
        return new Departamentobd().actualizar(e);
    }
}
