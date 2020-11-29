<%-- 
    Document   : BuscarCliente_2
    Created on : 09/10/2020, 01:24:23 PM
    Author     : josed
--%>

<%@page import="br.Clientebr"%>
<%@page import="java.util.List"%>
<%@page import="be.Clientebe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%   
              String codigo = request.getParameter("txtcodigo");
              List<Clientebe> lista;
              Clientebr regla = new Clientebr();
              lista = regla.BuscarCliente(codigo);
              
          %>
       <div class="container" style="float: left; width: 100%"> 
           <form action="regitrarExamenUbicacion.jsp" method="post">
         <div class="card mb-3" style="background: black;">
         
             <table class="border-warning" style="background: black;">
            <thead>
                
            </thead>
            <tbody style="color: white">
              
                <% 
                
                for (Clientebe entidad:lista){
                    
                    %> 
                    <tr>
                        <td>CODIGO</td>
                        <td><input class="form-control bg-light" disabled="" name="txtcodigoex" type="text" value='<%= entidad.getCodigo_cli()%>'></td> 
                    </tr>
                    <tr>
                        <td>NOMBRES</td>
                        <td> 
                            <input class="form-control bg-light" disabled="" name="txtnombreex" type="text" value='<%= entidad.getNombre_cli()%> ' > 
                        </td>
                    </tr>
                    <tr>
                        <td>APELLIDOS</td>
                        <td>
                            <input class="form-control bg-light" disabled="" name="txtapellidoex" type="text" value='<%= entidad.getApelli_cli()%>' > 
                        </td>
                    </tr>
                    <tr>
                        <td>DNI/RUC</td>
                         <td> 
                            <input class="form-control bg-light" disabled="" name="txtdniex" type="text" value='<%= entidad.getDniruc_cli()%>'> 
                        </td>
                    </tr>
                    <tr>
                        <td>TELEFONO</td>
                         <td> 
                            <input class="form-control bg-light" disabled="" name="txtdniex" type="text" value='<%= entidad.getTelef_cli()%>'> 
                        </td>
                    </tr>
                    <tr>
                        <td>DIRECCION</td>
                        <td> 
                            <input class="form-control bg-light" disabled="" name="txtdniex" type="text" value='<%= entidad.getDirrec_cli()%>'> 
                        </td>
                    </tr>
                    <tr>
                        <td>E-mail</td>
                         <td> 
                            <input class="form-control bg-light" disabled="" name="txtdniex" type="text" value='<%= entidad.getEmail_cli()%>'> 
                        </td>
                    </tr>
                <%
                }
                %>
            </tbody>
        </table>
        </div>
           
        </form>
        </div>
