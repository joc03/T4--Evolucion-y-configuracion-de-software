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
public class TransporteMateriales {
    private String descripcion;
    private String codCont;
    private String departamento;
    private int viajes;
    private float precio;
    private float subtotal;

    public TransporteMateriales() {
    }

    public TransporteMateriales(String descripcion, String codCont, String departamento, int viajes, float precio, float subtotal) {
        this.descripcion = descripcion;
        this.codCont = codCont;
        this.departamento = departamento;
        this.viajes = viajes;
        this.precio = precio;
        this.subtotal = subtotal;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public int getViajes() {
        return viajes;
    }

    public void setViajes(int viajes) {
        this.viajes = viajes;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public float getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(float subtotal) {
        this.subtotal = subtotal;
    }

    public String getCodCont() {
        return codCont;
    }

    public void setCodCont(String codCont) {
        this.codCont = codCont;
    }
    
    
}
