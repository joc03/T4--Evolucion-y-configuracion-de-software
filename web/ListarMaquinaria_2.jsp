 <%-- 
    Document   : ListarMaquinaria_2
    Created on : 18/07/2020, 04:55:29 AM
    Author     : josem
--%>

<%@page import="java.util.List"%>
<%@page import="br.Maquinariabr"%>
<%@page import="be.Maquinariabe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ilche</title>
        <script src="jquery.js" type="text/javascript"></script>
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
        
        <script>              
            
        </script> 
        
    </head>
    <body>
        
          <%
              List<Maquinariabe> lista;
              Maquinariabr regla = new Maquinariabr();
              lista = regla.listarCliente();
          %>
     
        
          <div class="" style=" " > 
             
         <div class="card mb-5" style=" width: 100%; height: 100%; padding: 0px">
         <div class="card-header" style="background:  #ffcc20;">
                        <i class="fas fa-table"></i>
                       MAQUINARIAS</div>
           
            <div class="card-body">
                      <div class="card-subtitle">
                          <div class="row">
                              <div class="col-2"><b>CODIGO</b></div>
                              <div class="col-3"><b>TIPO DE MAQUINARIA</b></div>
                              <div class="col-2"><b>CANTIDAD</b></div>
                              <div class="col-2"><b>PRECIO(Día)</b></div>
                              <div class="col-1"><b>PESO(T)</b></div>
                              <div class="col-2"><b></b></div>
                          </div>
                      </div>
                    <% 
                    for (Maquinariabe entidad:lista){                   
                    %> 
                    <div class="">
                        
                    
                    <div class="row">
                        
                        <div class="col-2">
                            <input class="form-control bg-light" style="height: 47px" disabled="" name="txtcodigoex" type="text" value='<%= entidad.getCodigo_Maqui()%>' >
                        </div>
                        
                        <div class="col-3">
                            <input class="form-control bg-light" style="height: 47px" disabled="" name="txtnombreex" type="text" value='<%= entidad.getNombre_Maqui()%> ' > 
                        </div>
                        
                        <div class="col-2">
                            <input class="form-control bg-light" style="height: 47px;text-align: center" disabled="" name="txtnombreex" type="text" value='<%= entidad.getCanti_Maqui()%> ' > 
                        </div>
                        
                        <div class="col-2">
                            <input class="form-control bg-light" style="height: 47px;text-align: right" disabled="" name="txtapellidoex" type="text" value='S/.<%= entidad.getPrecio_Maqui()%>' > 
                        </div>
                        
                        <div class="col-1">
                            <input class="form-control bg-light" style="height: 47px; text-align: left" disabled="" name="txtdniex" type="text" value='<%= entidad.getPeso_Maqui()%>'> 
                        </div>
                        
                        
                        <div class="col-2">
                            <button type="submit" class="btn-lg   btn-outline-success" 
                                    onclick='editar("<%= entidad.getCodigo_Maqui()%>","<%= entidad.getNombre_Maqui()%>",
                                   "<%= entidad.getCanti_Maqui()%>","<%= entidad.getPrecio_Maqui()%>","<%= entidad.getPeso_Maqui()%>",
                                   "<%= entidad.getDimensio_Maqui()%>")'>
                                   <i class="fas fa-edit"></i>
                                   </button> 
                                   <button type="submit" class="btn-lg   btn-outline-danger"
                                           onclick='eliminar("<%= entidad.getCodigo_Maqui()%>","<%= entidad.getNombre_Maqui()%>",
                                   "<%= entidad.getCanti_Maqui()%>","<%= entidad.getPrecio_Maqui()%>","<%= entidad.getPeso_Maqui()%>",
                                   "<%= entidad.getDimensio_Maqui()%>")'
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
