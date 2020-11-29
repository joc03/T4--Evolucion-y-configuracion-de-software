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
public class ContenidoAlquilerbe {
    private String cod;
    private String descripcion;
    private String codCont;
    private float cantidad;
    private float dias;
    private float precio;
    private float subtotal;

    public ContenidoAlquilerbe() {
    }

    public ContenidoAlquilerbe(String cod, String descripcion, String codCont, float cantidad, float dias, float precio, float subtotal) {
        this.cod = cod;
        this.descripcion = descripcion;
        this.codCont = codCont;
        this.cantidad = cantidad;
        this.dias = dias;
        this.precio = precio;
        this.subtotal = subtotal;
    }

    public float getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(float subtotal) {
        this.subtotal = subtotal;
    }

    public String getCod() {
        return cod;
    }

    public void setCod(String cod) {
        this.cod = cod;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCodCont() {
        return codCont;
    }

    public void setCodCont(String codCont) {
        this.codCont = codCont;
    }

    public float getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public float getDias() {
        return dias;
    }

    public void setDias(int dias) {
        this.dias = dias;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    @Override
    public String toString() {
        return "ContenidoAlquilerbe{" + "cod=" + cod + ", descripcion=" + descripcion + ", codCont=" + codCont + ", cantidad=" + cantidad + ", dias=" + dias + ", precio=" + precio + ", subtotal=" + subtotal + '}';
    }
    
    
    
}
