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
public class RegistrarSolicitudTransporteMaquinaria {
    private String codigo;
    private String codcont;
    private String dni;
    private String apellido;
    private float precio;
    private String fecha;
    private String chofer;

    public RegistrarSolicitudTransporteMaquinaria() {
    }

    public RegistrarSolicitudTransporteMaquinaria(String codigo, String codcont, String dni, String apellido, float precio, String fecha, String chofer) {
        this.codigo = codigo;
        this.codcont = codcont;
        this.dni = dni;
        this.apellido = apellido;
        this.precio = precio;
        this.fecha = fecha;
        this.chofer = chofer;
    }

    public String getChofer() {
        return chofer;
    }

    public void setChofer(String chofer) {
        this.chofer = chofer;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getCodcont() {
        return codcont;
    }

    public void setCodcont(String codcont) {
        this.codcont = codcont;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    
}
