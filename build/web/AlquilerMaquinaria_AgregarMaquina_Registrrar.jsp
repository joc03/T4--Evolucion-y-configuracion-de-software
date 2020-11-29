<%-- 
    Document   : AlquilerMaquinaria_AgregarMaquina_Registrrar
    Created on : 22/10/2020, 04:14:24 AM
    Author     : josed
--%>

<%@page import="be.ContenidoAlquilerbe"%>
<%@page import="br.Maquinariabr"%>
<%@page import="be.Maquinariabe"%>
<%@page import="br.AlquilerMaquinariaPreciobr"%>
<%@page import="be.AlquilerMaquinariaPreciosbe"%>
<%@page import="br.Materialesbr"%>
<%@page import="be.TransporteMateriales"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String maq = request.getParameter("tmaquina");
float dias =Float.parseFloat( request.getParameter("tdias"));
float cant =Float.parseFloat(request.getParameter("tcantidad"));

br.Maquinariabr lo2 = new Maquinariabr();
float pre= lo2.BuscarPrecio(maq);
String nombre = lo2.BuscarNombre(maq);
float subtotal = dias*cant*pre;

br.AlquilerMaquinariaPreciobr lo = new AlquilerMaquinariaPreciobr();
int resultado= lo.FilasContenido();
String codigo = "CT0" + resultado;


int re= lo.contador();
String cod = "C" + re;

AlquilerMaquinariaPreciosbe u = new AlquilerMaquinariaPreciosbe(maq,nombre,codigo,dias,cant,pre,subtotal);
int r = lo.registrarMaquinaria(u);
ContenidoAlquilerbe cont = new ContenidoAlquilerbe(codigo,nombre,cod,cant,dias,pre,subtotal);

if(r ==1 ){
   lo.registrarContenido(cont);
    
    
    %>
   
    
 <%
} 
else{

  %>
 

<%
} 

%>

