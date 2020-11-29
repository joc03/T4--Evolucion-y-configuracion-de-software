/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package be;

/**
 *
 * @author josed
 */
public class AlquilerMaquinariaPreciosbe {
    private String codigoMaquina; 
    private String tipoMaquina;
    private String codCont;
    private float dias;
    private float cantidad;
    private float precio;
    private float subtotal;

    public AlquilerMaquinariaPreciosbe() {
    }

    public AlquilerMaquinariaPreciosbe(String codigoMaquina, String tipoMaquina, String codCont, float dias, float cantidad, float precio, float subtotal) {
        this.codigoMaquina = codigoMaquina;
        this.tipoMaquina = tipoMaquina;
        this.codCont = codCont;
        this.dias = dias;
        this.cantidad = cantidad;
        this.precio = precio;
        this.subtotal = subtotal;
    }

    

    public float getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(float subtotal) {
        this.subtotal = subtotal;
    }

    public String getCodigoMaquina() {
        return codigoMaquina;
    }

    public void setCodigoMaquina(String codigoMaquina) {
        this.codigoMaquina = codigoMaquina;
    }

    public String getTipoMaquina() {
        return tipoMaquina;
    }

    public void setTipoMaquina(String tipoMaquina) {
        this.tipoMaquina = tipoMaquina;
    }

    public float getDias() {
        return dias;
    }

    public void setDias(float dias) {
        this.dias = dias;
    }

    public float getCantidad() {
        return cantidad;
    }

    public void setCantidad(float cantidad) {
        this.cantidad = cantidad;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public String getCodCont() {
        return codCont;
    }

    public void setCodCont(String codCont) {
        this.codCont = codCont;
    }

    @Override
    public String toString() {
        return "AlquilerMaquinariaPreciosbe{" + "codigoMaquina=" + codigoMaquina + ", tipoMaquina=" + tipoMaquina + ", codCont=" + codCont + ", dias=" + dias + ", cantidad=" + cantidad + ", precio=" + precio + ", subtotal=" + subtotal + '}';
    }
    
}
