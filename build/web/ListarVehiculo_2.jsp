<%-- 
    Document   : ListarVehiculo_2
    Created on : 18/07/2020, 05:53:35 AM
    Author     : josem
--%>

<%@page import="java.util.List"%>
<%@page import="br.Vehiculobr"%>
<%@page import="be.Vehiculobe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ilche Vehiculo</title>
        <script src="jquery.js" type="text/javascript"></script>
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
    </head>
    <body>
        
          <%
              List<Vehiculobe> lista;
              Vehiculobr regla = new Vehiculobr();
              lista = regla.listarVehiculo();
          %>
     
        
          <div class="" style=" " > 
             
         <div class="card mb-5" style=" width: 100%;padding: 0px;">
         <div class="card-header" style="background:  #ffcc20;">
                        <i class="fas fa-table"></i>
                       VEHÍCULOS</div>
<div class="card-body">
                      <div class="card-subtitle">
                          <div class="row">
                              <div class="col-2"><b>CODIGO</b></div>
                              <div class="col-2"><b>PLACA</b></div>                  
                              <div class="col-2"><b>PESO TARA</b></div>
                              <div class="col-2"><b>PESO BRUTO(T)</b></div> 
                              <div class="col-2"><b>CARGO UNITARIO</b></div> 
                              <div class="col-2"><b></b></div>
                          </div>
                      </div>
                    <% 
                    for (Vehiculobe entidad:lista){                   
                    %> 
                    <div class="">
                    <div class="row">
                        
                        <div class="col-2">
                           <input class="form-control bg-light"  disabled="" name="txtcodigoex" type="text" value='<%= entidad.getCodigo_vehi()%>' >                            

                        </div>
                        
                        <div class="col-2">
                           <input class="form-control bg-light "disabled="" name="txtnombreex" type="text" value='<%= entidad.getPlaca_vehi()%> ' > 
                        </div>
                        
                        
                        
                        <div class="col-2">
                            <input class="form-control bg-light" disabled="" name="txtapellidoex" type="text" value='<%= entidad.getPesoTara_vehi()%>' > 
                        </div>
                        
                        <div class="col-2">
                            <input class="form-control bg-light" disabled="" name="txtdniex" type="text" value='<%= entidad.getPesoBruto_vehi()%>'> 
                        </div>
                        <div class="col-2">
                            <input class="form-control bg-light" disabled="" name="txtdniex" type="text" value='<%= entidad.getCargoUni_vehi()%>'>
                        </div>
                        
                        
                        <div class="col-2">
                            <button type="submit" class="btn-lg   btn-outline-success" 
                                   onclick='editar( "<%= entidad.getCodigo_vehi()%>","<%= entidad.getPlaca_vehi()%>",
                                   "<%= entidad.getPoliza_vehi()%>","<%= entidad.getPesoTara_vehi()%>","<%= entidad.getPesoBruto_vehi()%>",
                                   "<%= entidad.getCargoUni_vehi()%>")'>
                                   <i class="fas fa-edit"></i>
                                   </button> 
                                   <button type="submit" class="btn-lg   btn-outline-danger"
                                           onclick='eliminarVeh( "<%= entidad.getCodigo_vehi()%>","<%= entidad.getPlaca_vehi()%>",
                                   "<%= entidad.getPoliza_vehi()%>","<%= entidad.getPesoTara_vehi()%>","<%= entidad.getPesoBruto_vehi()%>",
                                   "<%= entidad.getCargoUni_vehi()%>")'
                                           >
                                       <i class="fas fa-trash-alt"></i>
                                   </button>
                                  
                        </div>
                                  
                        
                   </div>
            </div>
                    <%
                        }
                        %>
                  </div>
        </div>
        </div>
        
            
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>    
    </body>   
</html>

