<%-- 
    Document   : RegistrarCotizacionTransporte
    Created on : 13/10/2020, 05:03:58 AM
    Author     : josed
--%>

<%@page import="br.Maquinariabr"%>
<%@page import="br.Departamentobr"%>
<%@page import="br.Trabsportebr"%>
<%@page import="dao.Transportemaquibd"%>
<%@page import="be.TransporteMaquinaria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String maq = request.getParameter("tdescripcion");
String depa = request.getParameter("tdepartamento");
int cant =Integer.parseInt( request.getParameter("tviajes"));

Maquinariabr Maq = new Maquinariabr();
String nommaq = Maq.BuscarNombre(maq);

Departamentobr dep = new Departamentobr();
float pre = dep.BuscarPrecio(depa);
String NomDepa = dep.BuscarDepartamento(depa);

float subto= pre*cant;


br.Trabsportebr lo = new Trabsportebr();


int FilaConte = lo.FilasContenido();
String codigo = "CONTE" + FilaConte;

int FilaCotiza = lo.FilasCotizacioTransporteO();
String codcont =  "COTRAMAQ00"+ FilaCotiza;

TransporteMaquinaria u = new TransporteMaquinaria(nommaq,codigo,NomDepa,cant,pre,subto);
int r = lo.registrarCotizacionTransporte(u);
if(r ==1 ){
  lo.RegisrarContenido(codigo, codcont, nommaq, NomDepa, cant, pre, subto);
} 
else{

}

%>

