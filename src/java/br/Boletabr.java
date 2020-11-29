/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.Boletabe;
import be.RegistrarServicio;
import dao.Boletabd;
import dao.RegistrarServiciobd;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author josed
 */
public class Boletabr {

    public Boletabr() {
    }
    public int registrarBoleta(Boletabe e) throws SQLException{
        return new Boletabd().RegistrarBoleta(e);
    }
   
    public int Filas(){
        return new Boletabd().ContarFilas();
    }
}
