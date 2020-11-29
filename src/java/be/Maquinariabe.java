/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package be;

/**
 *
 * @author josem
 */
public class Maquinariabe {
    private String codigo_Maqui;
    private String nombre_Maqui;
    private int canti_Maqui;
    private float precio_Maqui;
    private float peso_Maqui;
    private float dimensio_Maqui;

    public Maquinariabe() {
    }

    public Maquinariabe(String codigo_Maqui, String nombre_Maqui, int canti_Maqui, float precio_Maqui, float peso_Maqui, float dimensio_Maqui) {
        this.codigo_Maqui = codigo_Maqui;
        this.nombre_Maqui = nombre_Maqui;
        this.canti_Maqui = canti_Maqui;
        this.precio_Maqui = precio_Maqui;
        this.peso_Maqui = peso_Maqui;
        this.dimensio_Maqui = dimensio_Maqui;
    }

    public String getCodigo_Maqui() {
        return codigo_Maqui;
    }

    public void setCodigo_Maqui(String codigo_Maqui) {
        this.codigo_Maqui = codigo_Maqui;
    }

    public String getNombre_Maqui() {
        return nombre_Maqui;
    }

    public void setNombre_Maqui(String nombre_Maqui) {
        this.nombre_Maqui = nombre_Maqui;
    }

    public int getCanti_Maqui() {
        return canti_Maqui;
    }

    public void setCanti_Maqui(int canti_Maqui) {
        this.canti_Maqui = canti_Maqui;
    }

    public float getPrecio_Maqui() {
        return precio_Maqui;
    }

    public void setPrecio_Maqui(float precio_Maqui) {
        this.precio_Maqui = precio_Maqui;
    }

    public float getPeso_Maqui() {
        return peso_Maqui;
    }

    public void setPeso_Maqui(float peso_Maqui) {
        this.peso_Maqui = peso_Maqui;
    }

    public float getDimensio_Maqui() {
        return dimensio_Maqui;
    }

    public void setDimensio_Maqui(float dimensio_Maqui) {
        this.dimensio_Maqui = dimensio_Maqui;
    }

    
}
