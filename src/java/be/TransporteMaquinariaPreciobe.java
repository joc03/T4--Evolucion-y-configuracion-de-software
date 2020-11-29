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
public class TransporteMaquinariaPreciobe {
    private String codigo;
    private String codCont;
    private String placaVehiculo;
    private String maquina;
    private String departamento;
    private int cantidad;
    private float precio;
    private float subtotal;

    public TransporteMaquinariaPreciobe() {
    }

    public TransporteMaquinariaPreciobe(String codigo, String codCont, String placaVehiculo, String maquina, String departamento, int cantidad, float precio, float subtotal) {
        this.codigo = codigo;
        this.codCont = codCont;
        this.placaVehiculo = placaVehiculo;
        this.maquina = maquina;
        this.departamento = departamento;
        this.cantidad = cantidad;
        this.precio = precio;
        this.subtotal = subtotal;
    }

    

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getPlacaVehiculo() {
        return placaVehiculo;
    }

    public void setPlacaVehiculo(String placaVehiculo) {
        this.placaVehiculo = placaVehiculo;
    }

    public String getMaquina() {
        return maquina;
    }

    public void setMaquina(String maquina) {
        this.maquina = maquina;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
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

    @Override
    public String toString() {
        return "TransporteMaquinariaPreciobe{" + "codigo=" + codigo + ", codCont=" + codCont + ", placaVehiculo=" + placaVehiculo + ", maquina=" + maquina + ", departamento=" + departamento + ", cantidad=" + cantidad + ", precio=" + precio + ", subtotal=" + subtotal + '}';
    }

    }
