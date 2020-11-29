<%-- 
    Document   : ActualizarCliente
    Created on : 09/10/2020, 03:39:17 AM
    Author     : josed
--%>

<%@page import="br.Clientebr"%>
<%@page import="be.Clientebe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%    
String cod = request.getParameter("tcodigog");
String nom = request.getParameter("tnombreg");
String apell = request.getParameter("tapellidog");
String dni = request.getParameter("tdnig");
String tele = request.getParameter("ttelefonog");
String direc = request.getParameter("tdirecciong");
String emai = request.getParameter("temailg");


Clientebe u = new Clientebe(cod,nom,apell,dni,tele,direc,emai);
br.Clientebr lo = new Clientebr();
int resultado= lo.actualizar(u);
if(resultado ==1 ){
    //colocamos el usuario en el ambito de la sesion
    session.setAttribute("susuario", u);  
    
    %>
    <jsp:forward page="ListarClientes.jsp"/> 
    
 <%
} 
else{

  %>
  <jsp:forward page="ListarClientes.jsp"/> 
  
<%

}
%>

