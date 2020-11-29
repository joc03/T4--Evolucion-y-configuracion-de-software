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
public class Clientebe {
    private String codigo_cli;
    private String nombre_cli;
    private String apelli_cli;
    private String dniruc_cli;
    private String telef_cli;
    private String dirrec_cli;
    private String email_cli;

    public Clientebe() {
    }

    public Clientebe(String codigo_cli, String nombre_cli, String apelli_cli, String dniruc_cli, String telef_cli, String dirrec_cli, String email_cli) {
        this.codigo_cli = codigo_cli;
        this.nombre_cli = nombre_cli;
        this.apelli_cli = apelli_cli;
        this.dniruc_cli = dniruc_cli;
        this.telef_cli = telef_cli;
        this.dirrec_cli = dirrec_cli;
        this.email_cli = email_cli;
    }

    public String getCodigo_cli() {
        return codigo_cli;
    }

    public void setCodigo_cli(String codigo_cli) {
        this.codigo_cli = codigo_cli;
    }

    public String getNombre_cli() {
        return nombre_cli;
    }

    public void setNombre_cli(String nombre_cli) {
        this.nombre_cli = nombre_cli;
    }

    public String getApelli_cli() {
        return apelli_cli;
    }

    public void setApelli_cli(String apelli_cli) {
        this.apelli_cli = apelli_cli;
    }

    public String getDniruc_cli() {
        return dniruc_cli;
    }

    public void setDniruc_cli(String dniruc_cli) {
        this.dniruc_cli = dniruc_cli;
    }

    public String getTelef_cli() {
        return telef_cli;
    }

    public void setTelef_cli(String telef_cli) {
        this.telef_cli = telef_cli;
    }

    public String getDirrec_cli() {
        return dirrec_cli;
    }

    public void setDirrec_cli(String dirrec_cli) {
        this.dirrec_cli = dirrec_cli;
    }

    public String getEmail_cli() {
        return email_cli;
    }

    public void setEmail_cli(String email_cli) {
        this.email_cli = email_cli;
    }

            
}
