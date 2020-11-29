<%-- 
    Document   : CotizaTransporteMaterialesRegistra
    Created on : 14/11/2020, 08:17:45 AM
    Author     : josed
--%>

<%@page import="br.Materialesbr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%   

String Aten = request.getParameter("tAtenm");
String Tele = request.getParameter("tTelem");
String Clie = request.getParameter("tClientem");
String teleClie = request.getParameter("tTeleClie");
String EmailClie = request.getParameter("tEmailM");
float suma =Float.parseFloat( request.getParameter("tSumam"));

br.Materialesbr ma= new Materialesbr();
int re = ma.ContarFilaCotizacionTranspor_o();
String codcont = "CTM0" + re;
String codigo = "COTRMAT"+re;

int resultado = ma.RegiatrarCotizacionTransporteMateriales_o(codigo, codcont, Aten, Tele, Clie, teleClie, EmailClie, suma);

if(resultado == 1){
    ma.eliminarTabla();
} 
else {
    
}
%>
