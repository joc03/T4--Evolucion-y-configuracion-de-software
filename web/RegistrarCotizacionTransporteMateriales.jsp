<%-- 
    Document   : RegistrarCotizacionTransporteMateriales
    Created on : 13/10/2020, 06:45:55 AM
    Author     : josed
--%>

<%@page import="br.Departamentobr"%>
<%@page import="dao.Departamentobd"%>
<%@page import="br.Materialesbr"%>
<%@page import="be.TransporteMateriales"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String descri = request.getParameter("tdescripcion");
String depa = request.getParameter("tdepartamento");
int viajes =Integer.parseInt( request.getParameter("tviajes"));

Departamentobr dep = new Departamentobr();
float pre= dep.BuscarPrecio(depa);
String nombre= dep.BuscarDepartamento(depa);

float subto= pre*viajes;
br.Materialesbr lo = new Materialesbr();


  
int FilaConte = lo.ContarFilaContenido();
String codigo = "C" + FilaConte;

int FilaCoti = lo.ContarFilaCotizacionTranspor_o();
String codcont = "COTRMAT"+ FilaCoti;

TransporteMateriales u = new TransporteMateriales(descri,codigo,nombre,viajes,pre,subto);
int r = lo.registrarCotizacionTransporteMateriales(u);
if(r ==1 ){
   
    lo.RegiatrarContenido(codigo, codcont, descri, nombre, viajes, pre, subto);
   
} 
else{

  
}

%>


