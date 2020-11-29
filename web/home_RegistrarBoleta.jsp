<%-- 
    Document   : home_RegistrarBoleta
    Created on : 31/10/2020, 09:36:21 PM
    Author     : josed
--%>

<%@page import="br.Boletabr"%>
<%@page import="be.Boletabe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     
br.Boletabr lo = new Boletabr();
int re= lo.Filas();
String codigo = "N000" + re;
String dni = request.getParameter("tdni");
String codCont = request.getParameter("Tnombre");
String nombre = request.getParameter("TCodCont");
float pre = Float.parseFloat( request.getParameter("tpre"));
String fechaI = request.getParameter("tfechI");
String fechaF = request.getParameter("tfechF");
String tipo = request.getParameter("Ttipo");

Boletabe u = new Boletabe(codigo,dni,codCont,nombre, pre,fechaI,fechaF,tipo);
int resultado= lo.registrarBoleta(u);
if(resultado ==1 ){
} 
else{

 
}
%>
