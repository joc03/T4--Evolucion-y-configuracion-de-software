<%-- 
    Document   : EliminarAlquiler
    Created on : 31/10/2020, 11:08:55 AM
    Author     : josed
--%>

<%@page import="dao.AlquilerMaquinariaPreciobd"%>
<%@page import="be.RegistrarAlquiler"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String codigo = request.getParameter("tcodigo");
AlquilerMaquinariaPreciobd p = new AlquilerMaquinariaPreciobd();
int resultado= p.eliminarAlquilerAlquiler(codigo);
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


