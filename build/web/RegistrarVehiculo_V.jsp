<%-- 
    Document   : RegistrarVehiculo_V
    Created on : 19/07/2020, 12:24:16 AM
    Author     : josem
--%>

<%@page import="br.Vehiculobr"%>
<%@page import="be.Vehiculobe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  
String cod = request.getParameter("txtcodigoMaqui");
String nom = request.getParameter("txtplacaVe");
String can = request.getParameter("txtPoliVe");
float pre = Float.parseFloat( request.getParameter("txtpesTaraVe"));
float pes = Float.parseFloat( request.getParameter("txtPesoBruVe"));
float dim =Float.parseFloat( request.getParameter("txtcargoUniVe"));

Vehiculobe u = new Vehiculobe(cod, nom,can,pre,pes,dim);
br.Vehiculobr lo = new Vehiculobr();
int resultado= lo.registrarVehiculo(u);
if(resultado ==1 ){
    //colocamos el usuario en el ambito de la sesion
    session.setAttribute("susuario", u);  
    
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
