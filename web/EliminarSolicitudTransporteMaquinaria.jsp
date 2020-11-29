<%-- 
    Document   : EliminarSolicitudTransporteMaquinaria
    Created on : 24/11/2020, 12:46:31 PM
    Author     : josed
--%>


<%@page import="br.TransporteMaquinariaPreciobr"%>
<%@page import="dao.TransporteMaquinariaPreciobd"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String codigo = request.getParameter("tcodigo");
TransporteMaquinariaPreciobr p = new TransporteMaquinariaPreciobr();
p.eliminarSolicitudTransporteMaquinaria(codigo);

%>
