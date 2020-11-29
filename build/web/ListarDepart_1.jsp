<%-- 
    Document   : ListarClientes_1
    Created on : 17/07/2020, 09:16:52 PM
    Author     : josem
--%>

<%@page import="br.Departamentobr"%>
<%@page import="be.Departamentobe"%>
<%@page import="br.Clientebr"%>
<%@page import="java.util.List"%>
<%@page import="be.Clientebe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Departamento</title>
        <script src="jquery.js" type="text/javascript"></script>
        <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
    </head>
   
    <body>
          <%
              List<Departamentobe> lista;
              Departamentobr regla = new Departamentobr();
              lista = regla.listarCliente();
          %>
     
          <div class="" style=" " > 
             
              <div class="card " style=" width: 100%; height: 100%;padding: 0px  ">
         <div class="card-header" style="background:  #ffcc20">
                        <i class="fas fa-table"></i>
                       DEPARTAMENTO</div>
                    <div class="card-body">
                      <div class="card-subtitle">
                          <div class="row">
                              <div class="col-2"><b>CODIGO</b></div>
                              <div class="col-2"><b>DEPARTAMENTO</b></div>
                              <div class="col-2"><b>PRECIO</b></div>                             
                              <div class="col-2"><b></b></div>
                          </div>
                      </div>
                    <% 
                    for (Departamentobe entidad:lista){                    
                    %> 
                    <div class="">
                        
                    
                    <div class="row">
                        
                        <div class="col-2">
                            <input class="form-control bg-light" 
                                   readonly="" name="txtcodigoex" type="text" value='<%= entidad.getCodigo()%>' > 
                        </div>
                        
                        <div class="col-2">
                            <input class="form-control bg-light" readonly="" name="txtnombreex" type="text" value='<%= entidad.getDepartamento()%> ' > 
                        </div>
                        
                        <div class="col-2">
                            <input class="form-control bg-light"readonly="" name="txtnombreex" type="text" value='<%= entidad.getPrecio()%> ' > 
                        </div>
                        
                        
                        <div class="col-2">
                            <button type="submit" class="btn-lg   btn-outline-success" 
                                   onclick='editar("<%= entidad.getCodigo()%>","<%= entidad.getDepartamento()%>","<%= entidad.getPrecio()%>")'>
                                   <i class="fas fa-edit"></i>
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