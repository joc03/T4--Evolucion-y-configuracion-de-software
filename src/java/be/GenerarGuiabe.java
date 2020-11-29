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
public class GenerarGuiabe {
    private String codigo;
    private String motivoTras;
    private String dirPar;
    private String dirLle;
    private String FechaEmi;
    private String nombre;
    private String apellido;
    private String rucDNI;
    private String descrip;
    private int cantidad;
    private float peso;

    public GenerarGuiabe() {
    }

    public GenerarGuiabe(String codigo, String motivoTras, String dirPar, String dirLle, String FechaEmi, String nombre, String apellido, String rucDNI, String descrip, int cantidad, float peso) {
        this.codigo = codigo;
        this.motivoTras = motivoTras;
        this.dirPar = dirPar;
        this.dirLle = dirLle;
        this.FechaEmi = FechaEmi;
        this.nombre = nombre;
        this.apellido = apellido;
        this.rucDNI = rucDNI;
        this.descrip = descrip;
        this.cantidad = cantidad;
        this.peso = peso;
    }

    public float getPeso() {
        return peso;
    }

    public void setPeso(float peso) {
        this.peso = peso;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getMotivoTras() {
        return motivoTras;
    }

    public void setMotivoTras(String motivoTras) {
        this.motivoTras = motivoTras;
    }

    public String getDirPar() {
        return dirPar;
    }

    public void setDirPar(String dirPar) {
        this.dirPar = dirPar;
    }

    public String getDirLle() {
        return dirLle;
    }

    public void setDirLle(String dirLle) {
        this.dirLle = dirLle;
    }

    public String getFechaEmi() {
        return FechaEmi;
    }

    public void setFechaEmi(String FechaEmi) {
        this.FechaEmi = FechaEmi;
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

    public String getRucDNI() {
        return rucDNI;
    }

    public void setRucDNI(String rucDNI) {
        this.rucDNI = rucDNI;
    }

    public String getDescrip() {
        return descrip;
    }

    public void setDescrip(String descrip) {
        this.descrip = descrip;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    @Override
    public String toString() {
        return "GenerarGuiabe{" + "codigo=" + codigo + ", motivoTras=" + motivoTras + ", dirPar=" + dirPar + ", dirLle=" + dirLle + ", FechaEmi=" + FechaEmi + ", nombre=" + nombre + ", apellido=" + apellido + ", rucDNI=" + rucDNI + ", descrip=" + descrip + ", cantidad=" + cantidad + ", peso=" + peso + '}';
    }
    
}
