<%-- 
    Document   : Login_V
    Created on : 24/09/2020, 02:01:58 AM
    Author     : josed
--%>

<%@page import="br.Loginbr"%>
<%@page import="be.Loginbe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<%
String user = request.getParameter("textusuario");
String pass = request.getParameter("texpassword");
Loginbe u = new Loginbe(user, pass);
br.Loginbr lo = new Loginbr();
int resultado= lo.validar(u);
if(resultado ==1 ){
    %>

    
    <%@include file="MenuPrincipal.jsp" %> 
 <%
   
}
else{
  %>
  <body onload="cargar()">
       <%@include file="Login.jsp" %> 
  </body>
  
<%
}
%>

<script>
    function cargar(){
        alert ("Usuario o contraseña invalida");
    }
</script>
</html>
