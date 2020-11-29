<%-- 
    Document   : RegistrarSolicitudTransporte
    Created on : 24/10/2020, 06:26:03 PM
    Author     : josed
--%>


<%@page import="be.TransporteMaquinariaPreciobe"%>
<%@page import="br.TransporteMaquinariaPreciobr"%>
<%@page import="br.Departamentobr"%>
<%@page import="br.Maquinariabr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
     
   
String dni = request.getParameter("Tdni");
String ape = request.getParameter("Tape");
float precio = Float.parseFloat( request.getParameter("Tprecio"));
String chofer = request.getParameter("TChofer");
String fecha = request.getParameter("TFecha");

br.TransporteMaquinariaPreciobr lo = new TransporteMaquinariaPreciobr();
int FILASS= lo.ContarFilasContadorSoli();
String codCont= "T"+ FILASS;

int FilasSolicitud = lo.ContarFilasSolicitud();
String codigo = "TMQSOLI0" + FilasSolicitud;

//registramos la solicitud
int r = lo.registrarSolicitudTransporteMaquinaria(codigo, codCont, dni, ape, precio, fecha, chofer);

//contador
String cod = "cod" + FILASS;

if( r ==1 ){
    
   lo.RegistrarContador(cod, FILASS);
   lo.EliminarTabla();
    %>
   
    
 <%
} 
else{

  %>
 
  
  
<%
} 

%>
