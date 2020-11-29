/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br;

import be.Clientebe;
import be.Maquinariabe;
import be.Alquilermaquinaria;
import be.suma;
import dao.AlquilerMaquinariaPreciobd;
import dao.Alquilermabd;
import dao.Clientebd;
import dao.Maquinariabd;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author josed
 */
public class Alquilermabr {

    public Alquilermabr() {
    }
    //temporal
    public int registrarALquiler(Alquilermaquinaria e) throws SQLException{
        return new Alquilermabd().registrarCotización(e);
    }
    public List<Alquilermaquinaria> listarCliente() throws SQLException{
        return new Alquilermabd().ListadoCotizacionAlquiler();
    }
    public int eliminarCotizacion(Alquilermaquinaria e) throws SQLException{
        return new Alquilermabd().eliminarCotizacioAlquiler(e);
    }
    public List<suma> listasuma() throws SQLException{
      
            return new Alquilermabd().sumatotal();
    }
    //cotizacion 
    public int registrarALquilerCotizacion(String cod,String Aten, String teleAten,String Cliente, String TeleClie, String EmailClie, float total, String codigoCont ) throws SQLException{
        return new Alquilermabd().RegistrarCotizacion(cod,Aten, teleAten,Cliente,TeleClie,EmailClie,total,codigoCont);
    }
    //Contenido
    public int RegistrarContenidoCoAllMaq(String cod,String condcont, String maq,int dias, int cant, float pre, float subtotal ) throws SQLException{
        return new Alquilermabd().RegistrarContenidoCoAlquiMa(cod,condcont, maq,dias,cant,pre,subtotal);
    }
    public int eliminarContenido(String cod) throws SQLException{
        return new Alquilermabd().eliminarContenido(cod);
    }
    //contador
    public int Contador(String cod,String contador ) throws SQLException{
        return new Alquilermabd().contadorContenido(cod,contador);
    }
    public int contadorFilasCotizacion(){
        return new Alquilermabd().ContarFilasCotAlquiler();
    }
    public int contadorFilasContenido(){
        return new Alquilermabd().ContarFilasContenidoCotAlquiler();
    }
    public int EliminarTable(){
        return new Alquilermabd().EliminarTabla();
    }
}
