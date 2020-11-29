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
public class TransporteMaquinaria {
    private String descripcion;
    private String codcont;
    private String departamento;
    private int viajes;
    private float precio;
    private float subtotal;

    public TransporteMaquinaria() {
    }

    public TransporteMaquinaria(String descripcion, String codcont, String departamento, int viajes, float precio, float subtotal) {
        this.descripcion = descripcion;
        this.codcont = codcont;
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

    public String getCodcont() {
        return codcont;
    }

    public void setCodcont(String codcont) {
        this.codcont = codcont;
    }

   

    
    
    
}
