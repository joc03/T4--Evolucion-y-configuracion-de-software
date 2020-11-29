<%-- 
    Document   : Eliminar
    Created on : 02/11/2020, 07:44:45 PM
    Author     : josed
--%>

<%@page import="br.AlquilerMaquinariaPreciobr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   
    String codigo = request.getParameter("tcodigo");
    
    String codi = "CT01";
    
    
    AlquilerMaquinariaPreciobr p = new AlquilerMaquinariaPreciobr();
    //int resultado= p.eliminarMaquinaria(codigo);
   int resultado = p.eliminarContenido(codi);

if(resultado ==1 ){
    
} 
else{
}
%>
