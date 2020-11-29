/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.Clientebe;
import be.GenerarGuiabe;
import dao.Clientebd;
import dao.GenerarGuiabd;
import java.sql.SQLException;

/**
 *
 * @author josed
 */
public class GenerarGuiabr {

    public GenerarGuiabr() {
    }
    public int registrarGuia(GenerarGuiabe e) throws SQLException{
        return new GenerarGuiabd().registrarGuia(e);
    }
    public int Filas(){
        return new GenerarGuiabd().ContarFilas();
    }
}
