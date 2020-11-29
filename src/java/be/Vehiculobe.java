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
public class Vehiculobe {
    private String codigo_vehi;
    private String placa_vehi;
    private String poliza_vehi;
    private float pesoTara_vehi;
    private float pesoBruto_vehi;
    private float cargoUni_vehi;

    public Vehiculobe() {
    }

    public Vehiculobe(String codigo_vehi, String placa_vehi, String poliza_vehi, float pesoTara_vehi, float pesoBruto_vehi, float cargoUni_vehi) {
        this.codigo_vehi = codigo_vehi;
        this.placa_vehi = placa_vehi;
        this.poliza_vehi = poliza_vehi;
        this.pesoTara_vehi = pesoTara_vehi;
        this.pesoBruto_vehi = pesoBruto_vehi;
        this.cargoUni_vehi = cargoUni_vehi;
    }

    public String getCodigo_vehi() {
        return codigo_vehi;
    }

    public void setCodigo_vehi(String codigo_vehi) {
        this.codigo_vehi = codigo_vehi;
    }

    public String getPlaca_vehi() {
        return placa_vehi;
    }

    public void setPlaca_vehi(String placa_vehi) {
        this.placa_vehi = placa_vehi;
    }

    public String getPoliza_vehi() {
        return poliza_vehi;
    }

    public void setPoliza_vehi(String poliza_vehi) {
        this.poliza_vehi = poliza_vehi;
    }

    public float getPesoTara_vehi() {
        return pesoTara_vehi;
    }

    public void setPesoTara_vehi(float pesoTara_vehi) {
        this.pesoTara_vehi = pesoTara_vehi;
    }

    public float getPesoBruto_vehi() {
        return pesoBruto_vehi;
    }

    public void setPesoBruto_vehi(float pesoBruto_vehi) {
        this.pesoBruto_vehi = pesoBruto_vehi;
    }

    public float getCargoUni_vehi() {
        return cargoUni_vehi;
    }

    public void setCargoUni_vehi(float cargoUni_vehi) {
        this.cargoUni_vehi = cargoUni_vehi;
    }
    
}
