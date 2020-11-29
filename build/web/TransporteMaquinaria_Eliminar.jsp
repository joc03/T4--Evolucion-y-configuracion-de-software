<%-- 
    Document   : TransporteMaquinaria_Eliminar
    Created on : 22/10/2020, 08:16:38 AM
    Author     : josed
--%>

<%@page import="br.TransporteMaquinariaPreciobr"%>
<%@page import="br.AlquilerMaquinariaPreciobr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   
    String codigo = request.getParameter("tcodigo");
    String codCont = request.getParameter("tCodCont");
    TransporteMaquinariaPreciobr p = new TransporteMaquinariaPreciobr();
    
int resultado= p.eliminarTransporteMaquinaria(codigo);
if(resultado ==1 ){
   p.eliminarContenidoTransporte(codCont);
    
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
