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
public class RegistrarServicio {
    private String codigo;
    private String tipopedido;
    private String CodCont;
    private String nombre;
    private String dni;
    private float precio;
    private String fechaI;
    private String FechaF;

    public RegistrarServicio() {
    }

    public RegistrarServicio(String codigo, String tipopedido, String CodCont, String nombre, String dni, float precio, String fechaI, String FechaF) {
        this.codigo = codigo;
        this.tipopedido = tipopedido;
        this.CodCont = CodCont;
        this.nombre = nombre;
        this.dni = dni;
        this.precio = precio;
        this.fechaI = fechaI;
        this.FechaF = FechaF;
    }

    

    public String getFechaF() {
        return FechaF;
    }

    public void setFechaF(String FechaF) {
        this.FechaF = FechaF;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getTipopedido() {
        return tipopedido;
    }

    public void setTipopedido(String tipopedido) {
        this.tipopedido = tipopedido;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public String getFechaI() {
        return fechaI;
    }

    public void setFechaI(String fechaI) {
        this.fechaI = fechaI;
    }

    public String getCodCont() {
        return CodCont;
    }

    public void setCodCont(String CodCont) {
        this.CodCont = CodCont;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public String toString() {
        return "RegistrarServicio{" + "codigo=" + codigo + ", tipopedido=" + tipopedido + ", CodCont=" + CodCont + ", nombre=" + nombre + ", dni=" + dni + ", precio=" + precio + ", fechaI=" + fechaI + ", FechaF=" + FechaF + '}';
    }

    
}
