<%-- 
    Document   : RegistrarPedidoTransporteMaquinaria
    Created on : 24/11/2020, 07:02:56 AM
    Author     : josed
--%>

<%@page import="br.TransporteMaquinariaPreciobr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String cod = request.getParameter("tcod");
String dni = request.getParameter("tcodigo");
String codCont = request.getParameter("tCodCont");
String Ape = request.getParameter("Tapellido");
float pre = Float.parseFloat( request.getParameter("Tprecio"));
String fecha = request.getParameter("Tfecha");
String chofer = request.getParameter("Tchofer");

br.TransporteMaquinariaPreciobr lo = new TransporteMaquinariaPreciobr();
int resultado =lo.registrarPedido(cod, dni,codCont,Ape,pre,fecha,chofer);
if(resultado ==1 ){
    
    
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
