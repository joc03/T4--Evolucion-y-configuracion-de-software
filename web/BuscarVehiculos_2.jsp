<%-- 
    Document   : BuscarVehiculos_2
    Created on : 09/10/2020, 02:59:25 PM
    Author     : josed
--%>

<%@page import="br.Vehiculobr"%>
<%@page import="java.util.List"%>
<%@page import="be.Vehiculobe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UK Programa Examen</title>
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
        <script src="js/jquery.min.js" type="text/javascript"></script>
       
        
    </head>
    <body>
        
          <%   
              String codigo = request.getParameter("txtcodigo");
              List<Vehiculobe> lista;
              Vehiculobr regla = new Vehiculobr();
              lista = regla.BuscarCliente(codigo);
              
          %>
       <div class="container" style="float: left; width: 100%"> 
           <form action="BuscarVehiculos.jsp" method="post">
         <div class="card mb-3" style="background: black;">
         
             <table class="border-warning" style="background: black;">
            <thead>
                
            </thead>
            <tbody style="color: white">
              
                <% 
                
                for (Vehiculobe entidad:lista){
                    
                    %> 
                    <tr>
                        <td>CODIGO</td>
                        <td><input class="form-control bg-light" disabled="" name="txtcodigoex" type="text" value='<%= entidad.getCodigo_vehi()%>'></td> 
                    </tr>
                    <tr>
                        <td>PLACA</td>
                        <td> 
                            <input class="form-control bg-light" disabled="" name="txtnombreex" type="text" value='<%= entidad.getPlaca_vehi()%> ' > 
                        </td>
                    </tr>
                    <tr>
                        <td>POLIZA</td>
                        <td>
                            <input class="form-control bg-light" disabled="" name="txtapellidoex" type="text" value='<%= entidad.getPoliza_vehi()%>' > 
                        </td>
                    </tr>
                    <tr>
                        <td>PESO TARA</td>
                         <td> 
                            <input class="form-control bg-light" disabled="" name="txtdniex" type="text" value='<%= entidad.getPesoTara_vehi()%>'> 
                        </td>
                    </tr>
                    <tr>
                        <td>PESO BRUTO</td>
                         <td> 
                            <input class="form-control bg-light" disabled="" name="txtdniex" type="text" value='<%= entidad.getPesoBruto_vehi()%>'> 
                        </td>
                    </tr>
                    <tr>
                        <td>CARGO UNITARIO</td>
                        <td> 
                            <input class="form-control bg-light" disabled="" name="txtdniex" type="text" value='<%= entidad.getCargoUni_vehi()%>'> 
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
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>    
    </body>   
</html>
