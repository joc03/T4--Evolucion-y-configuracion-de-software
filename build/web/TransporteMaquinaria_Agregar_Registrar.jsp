<%-- 
    Document   : TransporteMaquinaria_Agregar_Registrar
    Created on : 22/10/2020, 08:15:26 AM
    Author     : josed
--%>

<%@page import="be.ContenidoTransportebe"%>
<%@page import="be.ContenidoAlquilerbe"%>
<%@page import="br.Departamentobr"%>
<%@page import="br.TransporteMaquinariaPreciobr"%>
<%@page import="be.TransporteMaquinariaPreciobe"%>
<%@page import="br.Maquinariabr"%>
<%@page import="br.AlquilerMaquinariaPreciobr"%>
<%@page import="be.AlquilerMaquinariaPreciosbe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
String placavehi = request.getParameter("tVehiculo");
String codmaq = request.getParameter("tcodigoMaquina");

br.Maquinariabr lo2 = new Maquinariabr();
br.Departamentobr lo3 = new Departamentobr();
br.TransporteMaquinariaPreciobr lo4 = new TransporteMaquinariaPreciobr();

String nombre = lo2.BuscarNombre(codmaq);

String codDepart = request.getParameter("tDepacod");
String departamento = lo3.BuscarDepartamento(codDepart);
int cant = Integer.parseInt(request.getParameter("tcantidad"));
int Fila = lo4.ContarFilas() + 1;
String myFila = Integer.toString(Fila);
String codigo = "TM0" + myFila;
float pre= lo3.BuscarPrecio(codDepart);
br.TransporteMaquinariaPreciobr lo = new TransporteMaquinariaPreciobr();
float subtotal = cant*pre;
int Filas = lo.ContarFilasContenidoTransporte();
String codi="TRMA0" + Filas;

TransporteMaquinariaPreciobe u = new TransporteMaquinariaPreciobe(codigo,codi,placavehi,nombre,departamento,cant,pre,subtotal);

int r = lo.registrarTransporteMaquinaria(u);
//número de solicitudes
int FILASS= lo.ContarFilasContadorSoli();
String codCont= "T"+ FILASS;
ContenidoTransportebe con = new ContenidoTransportebe(codi,codCont,placavehi,nombre,departamento,cant,pre,subtotal);
 
if(r ==1 ){
   lo.registrarContenidoTransporte(con);
   
} 
else{

} 

%>
