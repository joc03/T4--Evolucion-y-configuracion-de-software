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
public class BoletaTransporteMaquinaria {
    private String codigo;
    private String dni;
    private String codCont;
    private String apellido;
    private float precio;
    private String fecha;
    private String chofer;

    public BoletaTransporteMaquinaria() {
    }

    public BoletaTransporteMaquinaria(String codigo, String dni, String codCont, String apellido, float precio, String fecha, String chofer) {
        this.codigo = codigo;
        this.dni = dni;
        this.codCont = codCont;
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

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
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
