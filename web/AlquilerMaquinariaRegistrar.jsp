<%-- 
    Document   : AlquilerMaquinariaRegistrar
    Created on : 31/10/2020, 08:41:47 AM
    Author     : josed
--%>

<%@page import="be.RegistrarAlquiler"%>
<%@page import="br.AlquilerMaquinariaPreciobr"%>
<%@page import="be.AlquilerMaquinariaPreciosbe"%>
<%@page import="br.Maquinariabr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    

br.AlquilerMaquinariaPreciobr lo = new AlquilerMaquinariaPreciobr(); 
String apellido = request.getParameter("Tapellido");
String dni = request.getParameter("Tdni");
Float precio =Float.parseFloat( request.getParameter("Tprecio"));
String Fechai = request.getParameter("TfechaIni");
String FechaF = request.getParameter("TfechaFin");


int re= lo.contador();
String codCont = "C" + re;

int filas = lo.contador();
String codigo = "Contador" + filas;
String codi = "SOLI" + filas;
RegistrarAlquiler u = new RegistrarAlquiler(codi,dni,codCont,apellido,precio,Fechai,FechaF);

int r = lo.registrarAlquiler(u);

if(r ==1){
    //colocamos el usuario en el ambito de la sesion
    lo.elimianarTabla();
    lo.registrarContador(codigo, filas);
    
} 
else{

} 

%>
