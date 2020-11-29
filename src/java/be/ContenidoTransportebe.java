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
public class ContenidoTransportebe {
    private String codigo;
    private String codCont;
    private String vehiculo;
    private String maquina;
    private String depa;
    private int cantidad;
    private float precio;
    private float subtotal;

    public ContenidoTransportebe() {
    }

    public ContenidoTransportebe(String codigo, String codCont, String vehiculo, String maquina, String depa, int cantidad, float precio, float subtotal) {
        this.codigo = codigo;
        this.codCont = codCont;
        this.vehiculo = vehiculo;
        this.maquina = maquina;
        this.depa = depa;
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

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getCodCont() {
        return codCont;
    }

    public void setCodCont(String codCont) {
        this.codCont = codCont;
    }

    public String getVehiculo() {
        return vehiculo;
    }

    public void setVehiculo(String vehiculo) {
        this.vehiculo = vehiculo;
    }

    public String getMaquina() {
        return maquina;
    }

    public void setMaquina(String maquina) {
        this.maquina = maquina;
    }

    public String getDepa() {
        return depa;
    }

    public void setDepa(String depa) {
        this.depa = depa;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    @Override
    public String toString() {
        return "ContenidoTransportebe{" + "codigo=" + codigo + ", codCont=" + codCont + ", vehiculo=" + vehiculo + ", maquina=" + maquina + ", depa=" + depa + ", cantidad=" + cantidad + ", precio=" + precio + ", subtotal=" + subtotal + '}';
    }
    
    
    
}
