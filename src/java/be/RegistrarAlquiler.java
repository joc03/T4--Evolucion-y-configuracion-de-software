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
public class RegistrarAlquiler {
    private String codigo;
    private String dni;
    private String codCont;
    private String apellido;
    private Float precio;
    private String fechaInicio;
    private String fechaFin;

    public RegistrarAlquiler() {
    }

    public RegistrarAlquiler(String codigo, String dni, String codCont, String apellido, Float precio, String fechaInicio, String fechaFin) {
        this.codigo = codigo;
        this.dni = dni;
        this.codCont = codCont;
        this.apellido = apellido;
        this.precio = precio;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
    }


    public String getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(String fechaFin) {
        this.fechaFin = fechaFin;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public Float getPrecio() {
        return precio;
    }

    public void setPrecio(Float precio) {
        this.precio = precio;
    }

    public String getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(String fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

     public String getCodCont() {
        return codCont;
    }

    public void setCodCont(String codCont) {
        this.codCont = codCont;
    }
public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    @Override
    public String toString() {
        return "RegistrarAlquiler{" + "codigo=" + codigo + ", dni=" + dni + ", codCont=" + codCont + ", apellido=" + apellido + ", precio=" + precio + ", fechaInicio=" + fechaInicio + ", fechaFin=" + fechaFin + '}';
    }
}
