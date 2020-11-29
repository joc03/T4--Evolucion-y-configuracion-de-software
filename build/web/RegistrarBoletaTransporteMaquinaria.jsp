<%-- 
    Document   : RegistrarBoletaTransporteMaquinaria
    Created on : 24/11/2020, 02:01:27 PM
    Author     : josed
--%>

<%@page import="br.TransporteMaquinariaPreciobr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     
br.TransporteMaquinariaPreciobr lo = new TransporteMaquinariaPreciobr();

String codigo = request.getParameter("tcod");
String dni = request.getParameter("tcodigo");
String codCont = request.getParameter("tCodCont");
String apellido = request.getParameter("Tapellido");
float precio = Float.parseFloat( request.getParameter("Tprecio"));
String fecha = request.getParameter("Tfecha");
String chofer = request.getParameter("Tchofer");

 lo.registrarBoletaTransporteMaquinaria(codigo, dni, codCont, apellido, precio, fecha, chofer);

%>
