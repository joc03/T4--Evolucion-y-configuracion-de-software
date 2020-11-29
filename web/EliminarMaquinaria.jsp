<%-- 
    Document   : EliminarMaquinaria
    Created on : 18/07/2020, 04:53:40 AM
    Author     : josem
--%>

<%@page import="br.Maquinariabr"%>
<%@page import="be.Maquinariabe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   
    String codigo = request.getParameter("tcodigo");
    String nombre = request.getParameter("tnombre");
    int apell = Integer.parseInt( request.getParameter("tapellido"));
    float dni = Float.parseFloat( request.getParameter("tdni"));    
    float tele = Float.parseFloat( request.getParameter("tfecha"));
    float dir = Float.parseFloat( request.getParameter("thora"));
    
int sc = 0;
Maquinariabe u = new Maquinariabe(codigo,nombre,apell,dni,tele,dir);
Maquinariabr p = new Maquinariabr();
int resultado= p.eliminarMaquinaria(u);
if(resultado ==1 ){
    //colocamos el usuario en el ambito de la sesion
    session.setAttribute("susuario", u);  
    
    %>
    
    <%= resultado %>
    registros creados
    
    
    <jsp:include page="ListarMaquinarias.jsp"/>
    
 <%
} 
else{

  %>
0 Registros creados
<jsp:include page="ListarMaquinarias.jsp"/>
<%

}
%>
