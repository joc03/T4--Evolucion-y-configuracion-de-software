<%-- 
    Document   : RegistrarCliente_V
    Created on : 08/11/2020, 09:58:17 PM
    Author     : josed
--%>

<%@page import="br.Clientebr"%>
<%@page import="be.Clientebe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 

        String cod = request.getParameter("txtcodigocli");
        String nom = request.getParameter("txtnombrecli");
        String ape = request.getParameter("txtapellidcli");
        String dni_ru = request.getParameter("txtdnicli");
        String tele = request.getParameter("txttelecli");
        String dir = request.getParameter("txtDirCli");
        String email = request.getParameter("txtEmailCli");
        Clientebe u = new Clientebe(cod, nom,ape,dni_ru,tele,dir,email);
        br.Clientebr lo = new Clientebr();
         int resultado = lo.registrarCliente(u);
        if (resultado == 1){
            %>
            <jsp:include page="RegistrarClientes.jsp"/>
            <%
            
        }else {
%>            
 <jsp:include page="RegistrarClientes.jsp"/>

  <%      }
        

            %>
