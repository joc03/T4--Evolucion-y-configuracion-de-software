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
public class Choferesbe {
    private String codigo;
    private String nombre;
    private String apellido;
    private String dni;
    private String codigo_licencia;

    public Choferesbe() {
    }

    public Choferesbe(String codigo, String nombre, String apellido, String dni, String codigo_licencia) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
        this.codigo_licencia = codigo_licencia;
    }

    public String getCodigo_licencia() {
        return codigo_licencia;
    }

    public void setCodigo_licencia(String codigo_licencia) {
        this.codigo_licencia = codigo_licencia;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }
    
    
}
