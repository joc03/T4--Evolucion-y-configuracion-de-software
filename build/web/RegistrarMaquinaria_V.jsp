<%-- 
    Document   : RegistrarMaquinaria_V
    Created on : 17/07/2020, 04:18:12 AM
    Author     : josem
--%>

<%@page import="br.Maquinariabr"%>
<%@page import="be.Maquinariabe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  
String cod = request.getParameter("txtcodigoMaqui");
String nom = request.getParameter("txtnombreMaqui");
int can = Integer.parseInt( request.getParameter("txtcantidadMaqui"));
float pre = Float.parseFloat( request.getParameter("txtprecioMaqui"));
float pes = Float.parseFloat( request.getParameter("txtpesoCli"));
float dim =Float.parseFloat( request.getParameter("txtDimenCli"));

Maquinariabe u = new Maquinariabe(cod, nom,can,pre,pes,dim);
br.Maquinariabr lo = new Maquinariabr();
int resultado= lo.registrarMaquinaria(u);
if(resultado ==1 ){
    //colocamos el usuario en el ambito de la sesion
    session.setAttribute("susuario", u);  
    
    %>
    <jsp:forward page="RegistrarMaquinaria.jsp"/> 
    
 <%
} 
else{

  %>
  <jsp:forward page="RegistrarMaquinaria.jsp"/> 

<%

}
%>
