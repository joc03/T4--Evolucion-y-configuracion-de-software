<%-- 
    Document   : home_Guia_V
    Created on : 08/11/2020, 08:47:20 PM
    Author     : josed
--%>

<%@page import="be.GenerarGuiabe"%>
<%@page import="br.GenerarGuiabr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
       
<%
br.GenerarGuiabr lo = new GenerarGuiabr();
int resultad= lo.Filas();
String codigo = "GUIA" + resultad;
String Motivo = request.getParameter("textMotivo");
String dirPart = request.getParameter("textDirPart");
String DirLle = request.getParameter("textDirLle");
String FechaGui = request.getParameter("textFechaGui");
String nombre = request.getParameter("textnombre");
String apellido = request.getParameter("textApellido");
String RUCDNI = request.getParameter("textRUCDNI");
String descrip = request.getParameter("textDescrip");
int can = Integer.parseInt( request.getParameter("textCantidad"));
float peso = Float.parseFloat( request.getParameter("textPeso"));
GenerarGuiabe u = new GenerarGuiabe(codigo, Motivo,dirPart,DirLle,FechaGui,nombre,apellido,RUCDNI,descrip,can,peso);

int resultado= lo.registrarGuia(u);
if(resultado ==1 ){
  
   
    
%>
<jsp:forward page="home.jsp"/> 
    
 <%
} 
else{

  %>
  <jsp:forward page="home.jsp"/> 

<%

}
%>
