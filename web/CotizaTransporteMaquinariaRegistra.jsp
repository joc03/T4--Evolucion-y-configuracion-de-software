<%-- 
    Document   : CotizaTransporteMaquinariaRegistra
    Created on : 14/11/2020, 03:54:30 AM
    Author     : josed
--%>

<%@page import="br.Trabsportebr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%   

String Aten = request.getParameter("tAtenm");
String Tele = request.getParameter("tTelem");
String Clie = request.getParameter("tClientem");
String teleClie = request.getParameter("tTeleClie");
String EmailClie = request.getParameter("tEmailM");
float suma =Float.parseFloat( request.getParameter("tSumam"));

br.Trabsportebr Trans= new Trabsportebr();
int re = Trans.FilasCotizacioTransporteO();
String codcont = "COTRAMAQ00" + re;
String codigo = "COTIMAQ00"+re;

int resultado = Trans.RegisrarCotizacionTransMaqO(codigo, codcont, Aten, Tele, Clie, teleClie, EmailClie, suma);

if(resultado == 1){
    Trans.EliminarTabla();
} 
else {
    
}
%>