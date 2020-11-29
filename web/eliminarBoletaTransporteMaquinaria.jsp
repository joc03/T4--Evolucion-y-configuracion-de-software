<%-- 
    Document   : eliminarBoletaTransporteMaquinaria
    Created on : 24/11/2020, 05:21:32 PM
    Author     : josed
--%>

<%@page import="br.TransporteMaquinariaPreciobr"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String codigo = request.getParameter("tcodigo");
TransporteMaquinariaPreciobr p = new TransporteMaquinariaPreciobr();
int resultado= p.EliminarPedido(codigo);
if(resultado ==1 ){
    %>
    <jsp:include page="home.jsp"/>
 <%
} 
else{
  %>
<jsp:include page="home.jsp"/>
<%
}
%>
