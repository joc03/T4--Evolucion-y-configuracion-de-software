<%-- 
    Document   : ActualizarMaquinaria
    Created on : 09/10/2020, 12:55:09 PM
    Author     : josed
--%>

<%@page import="br.Maquinariabr"%>
<%@page import="be.Maquinariabe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 
<%    
String cod = request.getParameter("tcodigog");
String tipo = request.getParameter("ttipo");
int cant =Integer.parseInt( request.getParameter("tcantidad"));
float pre =Float.parseFloat( request.getParameter("tprecio"));
float pes =Float.parseFloat( request.getParameter("tpeso"));
float dimen =Float.parseFloat( request.getParameter("tdimenciones"));


Maquinariabe u = new Maquinariabe(cod,tipo,cant,pre,pes,dimen);
br.Maquinariabr lo = new Maquinariabr();
int resultado= lo.actualizar(u);
if(resultado ==1 ){
    //colocamos el usuario en el ambito de la sesion
    session.setAttribute("susuario", u);  
    
    %>
    <jsp:forward page="ListarMaquinarias.jsp"/> 
    
 <%
} 
else{

  %>
  <jsp:forward page="ListarMaquinarias.jsp"/> 
  
<%

}
%>

