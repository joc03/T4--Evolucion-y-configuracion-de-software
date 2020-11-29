<%-- 
    Document   : EliminarVehiculo
    Created on : 18/07/2020, 06:14:08 AM
    Author     : josem
--%>

<%@page import="br.Vehiculobr"%>
<%@page import="be.Vehiculobe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   
    String codigo = request.getParameter("tcodigo");
Vehiculobr p= new Vehiculobr();
int resultado= p.eliminarMaquinaria(codigo);
if(resultado ==1 ){
    //colocamos el usuario en el ambito de la sesion
     
    
    %>
    
    <%= resultado %>
    registros creados
    
    
    <jsp:include page="ListarVehiculo.jsp"/>
    
 <%
} 
else{

  %>
0 Registros creados
<jsp:include page="ListarVehiculo.jsp"/>
<%

}
%>
