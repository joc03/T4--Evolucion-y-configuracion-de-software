<%-- 
    Document   : AlquilerMaquinaria_Eliminar
    Created on : 22/10/2020, 06:58:45 AM
    Author     : josed
--%>

<%@page import="br.AlquilerMaquinariaPreciobr"%>
<%@page import="be.AlquilerMaquinariaPreciosbe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   
    String codigo = request.getParameter("tcodigo");
    String codi = request.getParameter("tcontenido");
    
    AlquilerMaquinariaPreciobr p = new AlquilerMaquinariaPreciobr();
    int resultado= p.eliminarMaquinaria(codigo);
    p.eliminarContenido(codi);

if(resultado ==1 ){
    
} 
else{
}
%>

