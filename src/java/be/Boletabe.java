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
public class Boletabe {
    private String codigo;
    private String dniCliente;
    private String codCont;
    private String nombre;
    private float precio;
    private String fechaI;
    private String FechaF;
    private String TipoPed;

    public Boletabe() {
    }

    public Boletabe(String codigo, String dniCliente, String codCont, String nombre, float precio, String fechaI, String FechaF, String TipoPed) {
        this.codigo = codigo;
        this.dniCliente = dniCliente;
        this.codCont = codCont;
        this.nombre = nombre;
        this.precio = precio;
        this.fechaI = fechaI;
        this.FechaF = FechaF;
        this.TipoPed = TipoPed;
    }

    

    public String getTipoPed() {
        return TipoPed;
    }

    public void setTipoPed(String TipoPed) {
        this.TipoPed = TipoPed;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getDniCliente() {
        return dniCliente;
    }

    public void setDniCliente(String dniCliente) {
        this.dniCliente = dniCliente;
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

    public String getFechaF() {
        return FechaF;
    }

    public void setFechaF(String FechaF) {
        this.FechaF = FechaF;
    }

    public String getCodCont() {
        return codCont;
    }

    public void setCodCont(String codCont) {
        this.codCont = codCont;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public String toString() {
        return "Boletabe{" + "codigo=" + codigo + ", dniCliente=" + dniCliente + ", codCont=" + codCont + ", nombre=" + nombre + ", precio=" + precio + ", fechaI=" + fechaI + ", FechaF=" + FechaF + ", TipoPed=" + TipoPed + '}';
    }

    

  
    
}
