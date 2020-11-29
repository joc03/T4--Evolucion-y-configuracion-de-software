<%-- 
    Document   : EliminarPedido
    Created on : 31/10/2020, 09:58:56 PM
    Author     : josed
--%>

<%@page import="dao.RegistrarServiciobd"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String codigo = request.getParameter("tcodigo");
RegistrarServiciobd p = new RegistrarServiciobd();
int resultado= p.eliminarPedido(codigo);
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
