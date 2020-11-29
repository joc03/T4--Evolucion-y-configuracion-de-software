<%-- 
    Document   : home_RegistrarPedido
    Created on : 31/10/2020, 05:03:56 PM
    Author     : josed
--%>

<%@page import="br.AlquilerMaquinariaPreciobr"%>
<%@page import="br.RegistrarServiciobr"%>
<%@page import="be.RegistrarServicio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
br.AlquilerMaquinariaPreciobr Ap = new AlquilerMaquinariaPreciobr(); 
br.RegistrarServiciobr lo = new RegistrarServiciobr();

String dni = request.getParameter("tcodigo");
String codCont = request.getParameter("tCodCont");
String Ape = request.getParameter("Tapellido");
float pre = Float.parseFloat( request.getParameter("Tprecio"));
String fechaI = request.getParameter("TfechaI");
String fechaF = request.getParameter("TfechaF");
String tipo="ALQUILER MAQUINARIA";

int filas = lo.contador();
String cod = "Contador" + filas;
String codigo= "PEDIDO" + filas;
RegistrarServicio u = new RegistrarServicio(codigo,tipo,codCont ,Ape,dni,pre,fechaI,fechaF);
int resultado= lo.registrarServicio(u);
if(resultado ==1 ){
    
    lo.registrarContador(cod, filas);
    
    %>
    <jsp:forward page="RegistrarVehiculo.jsp"/> 
    
 <%
} 
else{

  %>
  <jsp:forward page="RegistrarVehiculo.jsp"/> 

<%

}
%>
