/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.Choferesbe;
import be.Maquinariabe;
import dao.Choferesbd;
import dao.Maquinariabd;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author josed
 */
public class Choferesbr {

    public Choferesbr() {
    }
    public List<Choferesbe> listarCliente() throws SQLException{
            return new Choferesbd().ListadoChoferes();
    }
    
    public List<Choferesbe> BuscarChofer(String codigo) throws SQLException{
            return new Choferesbd().buscarChofer(codigo);
    }
}
