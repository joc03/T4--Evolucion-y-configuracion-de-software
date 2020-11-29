<%-- 
    Document   : RegistrarCotizacionAlquiles
    Created on : 09/10/2020, 08:11:39 PM
    Author     : josed
--%>

<%@page import="dao.Alquilermabd"%>
<%@page import="br.Maquinariabr"%>
<%@page import="be.Maquinariabe"%>
<%@page import="java.util.List"%>
<%@page import="br.Alquilermabr"%>
<%@page import="be.Alquilermaquinaria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

String maq = request.getParameter("tmaquina");
int canti =Integer.parseInt( request.getParameter("tcantidad"));
int dias =Integer.parseInt( request.getParameter("tdias"));

br.Maquinariabr lo2 = new Maquinariabr();
float pre= lo2.BuscarPrecio(maq);
String nombre = lo2.BuscarNombre(maq);

float subto= pre*dias*canti;
br.Alquilermabr lo = new Alquilermabr();

int re= lo.contadorFilasCotizacion();
String codCont = "COTI" + re;
int re1= lo.contadorFilasContenido();
String cod = "CONT" + re1;

Alquilermaquinaria u = new Alquilermaquinaria(nombre,cod, dias,canti,pre,subto);
int resultado= lo.registrarALquiler(u);
if(resultado ==1 ){
    
    lo.RegistrarContenidoCoAllMaq(cod, codCont, nombre, dias, canti, pre, subto);
    
} 
else{

  
}

%>


