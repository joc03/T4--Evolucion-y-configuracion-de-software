<%-- 
    Document   : ActualizarCliente
    Created on : 09/10/2020, 03:39:17 AM
    Author     : josed
--%>

<%@page import="br.Departamentobr"%>
<%@page import="be.Departamentobe"%>
<%@page import="br.Clientebr"%>
<%@page import="be.Clientebe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%    
String cod = request.getParameter("tcodigog");
String nom = request.getParameter("tnombreg");
float apell = Float.parseFloat(request.getParameter("tapellidog"));


Departamentobe u = new Departamentobe(cod,nom,apell);
br.Departamentobr lo = new Departamentobr();
int resultado= lo.ActualizarDepartamento(u);
if(resultado ==1 ){
    //colocamos el usuario en el ambito de la sesion
    session.setAttribute("susuario", u);  
    
    %>
    <jsp:forward page="ListarDepart.jsp"/> 
    
 <%
} 
else{

  %>
  <jsp:forward page="BuscarCliente.jsp"/> 
  
<%

}
%>

