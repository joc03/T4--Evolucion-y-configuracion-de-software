<%-- 
    Document   : CotizaAlquilerRegistra
    Created on : 13/11/2020, 01:44:08 PM
    Author     : josed
--%>

<%@page import="br.Alquilermabr"%>
<%@page import="be.Alquilermaquinaria"%>
<%@page import="br.Maquinariabr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
br.Alquilermabr lo = new Alquilermabr();
int re= lo.contadorFilasCotizacion();
String codCont = "COTI" + re;

String codi ="COT000"+re;
String Aten = request.getParameter("tAtencion");
String TeleAten = request.getParameter("tTelefonoAte");
String Cliente = request.getParameter("tCliente");
String TeleClie = request.getParameter("tTelefono");
String EmailClie = request.getParameter("tEmail");

float suma = Float.parseFloat(request.getParameter("tSuma"));


int resultado= lo.registrarALquilerCotizacion(codi,Aten, TeleAten,Cliente,TeleClie,EmailClie,suma,codCont);

if(resultado ==1 ){
   
lo.EliminarTable();
} 
else{

}

%>
