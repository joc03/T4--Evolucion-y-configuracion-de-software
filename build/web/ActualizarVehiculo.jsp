<%-- 
    Document   : ActualizarVehiculo
    Created on : 09/10/2020, 07:22:09 AM
    Author     : josed
--%>

<%@page import="br.Vehiculobr"%>
<%@page import="be.Vehiculobe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
    
String cod = request.getParameter("tcodigog");
String nom = request.getParameter("tnombreg");
String poli = request.getParameter("tpoliza");
Float pest = Float.parseFloat(request.getParameter("tpesotara"));
Float pesb = Float.parseFloat(request.getParameter("tpesobruto"));
Float cargou =Float.parseFloat( request.getParameter("tcargounitario"));



Vehiculobe u = new Vehiculobe(cod,nom,poli,pest,pesb,cargou);
br.Vehiculobr lo = new Vehiculobr();
int resultado= lo.actualizar(u);
if(resultado ==1 ){
    //colocamos el usuario en el ambito de la sesion
    session.setAttribute("susuario", u);  
    
    %>
    <jsp:forward page="ListarVehiculo.jsp"/> 
    
 <%
} 
else{

  %>
  <jsp:forward page="ListarVehiculo.jsp"/> 
  
<%

}
%>

