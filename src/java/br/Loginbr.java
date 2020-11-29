/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.Loginbe;
import dao.Loginbd;

/**
 *
 * @author josed
 */
public class Loginbr {

    public Loginbr() {
    }
    public int validar(Loginbe e) {
            return new Loginbd().validaracceso(e);
   }
    
}
