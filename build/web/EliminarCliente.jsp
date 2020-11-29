<%-- 
    Document   : EliminarCliente
    Created on : 17/07/2020, 09:38:21 PM
    Author     : josem
--%>

<%@page import="br.Clientebr"%>
<%@page import="be.Clientebe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   
    String codigo = request.getParameter("tcodigo");
    String nombre = request.getParameter("tnombre");    
    String apelli = request.getParameter("tapellido");  
    String dni = request.getParameter("tdni"); 
    String tele = request.getParameter("ttelefono");
    String dir = request.getParameter("tdireccion");
    String email = request.getParameter("temail");
int sc = 0;
Clientebe u = new Clientebe(codigo,nombre,apelli,dni,tele,dir,email);
Clientebr p = new Clientebr();
int resultado= p.eliminarCliente(u);
if(resultado ==1 ){
    //colocamos el usuario en el ambito de la sesion
    session.setAttribute("susuario", u);  
    
    %>
    
    <%= resultado %>
    registros creados
    
    
    <jsp:include page="ListarClientes.jsp"/>
    
 <%
} 
else{

  %>
0 Registros creados
<jsp:include page="ListarClientes.jsp"/>
<%

}
%>
