<%-- 
    Document   : TransporteMaquinaria_Principal
    Created on : 03/11/2020, 04:16:25 PM
    Author     : josed
--%>

<%@page import="br.Choferesbr"%>
<%@page import="be.Choferesbe"%>
<%@page import="br.TransporteMaquinariaPreciobr"%>
<%@page import="be.TransporteMaquinariaPreciobe"%>
<%@page import="br.Maquinariabr"%>
<%@page import="be.Maquinariabe"%>
<%@page import="br.Vehiculobr"%>
<%@page import="be.Vehiculobe"%>
<%@page import="java.util.List"%>
<%@page import="br.Departamentobr"%>
<%@page import="be.Departamentobe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
          
    </head>
    
    <body>
        <div class="card">
            <div class="card-header" style="text-align: left">
                <h1><i>Transporte de Maquinaria</i></h1>
            </div>
            <div class="card-body">
                <div style="border-style: solid; padding: 20px; border-color: #cccccc"> 
                    
                        <div class="row" style="text-align: right">
                              <div class="col-2" style="text-align: left"><i><b><h3>Cliente</h3></b></i> </div>
                              <div class="col-4"></div>
                              <div class="col-2">
                                  <b>DNI</b>
                              </div>
                              <div class="col-2">
                                      <input type="text" style="" id="txtdniClienteTMaq" 
                                         name="textcodigo1" class="form-control"
                                         maxlength="8"
                                         required pattern="[0-9]{8}"
                                         > 
                              </div>
                              <div class="col-2" style="text-align: left" >
                                  <button class="btn btn-outline-primary" type="submit" onclick="listarCliente()"  >
                                      <i class="fas fa-search"></i></button>
                              </div>
                            </div>
                    
                            <div class="" id="ListaCliente">

                            </div> 
                </div>
                <br>
                <div style="border-style: solid; padding: 20px; border-color: #cccccc"> 
                    
                        <div class="row" style="text-align: right">
                              <div class="col-2" style="text-align: left"><i><b><h3>Datos</h3></b></i> </div>
                        </div>
                    <div class="container-fluid" style="border-style: solid; padding: 20px; border-color: #cccccc">
                                <div class="row" >
                                            <div class="col-3">
                                               <b>Vehiculo</b>
                                            </div>
                                                <div class="col-3">
                                                    <select name="" id="texVehiculo" class="form-control">
                                                        <% 
                                                            List<Vehiculobe> List;
                                                         Vehiculobr ve= new Vehiculobr();
                                                         List = ve.listarVehiculo();
                                                         for (Vehiculobe entidad:List){
                                                        %>
                                                        <option value='<%= entidad.getPlaca_vehi()%>'> <%= entidad.getPlaca_vehi() %></option>

                                                        <%
                                                            }
                                                            %>
                                                    </select>
                                                </div>

                                                <div class="col-3">
                                                    <b>Maquinarias</b>
                                                </div>
                                                <div class="col-3">
                                                    <select name="textMaquinaria" id="texMaquinaria" class="form-control" style="width: 100%">
                                                        <% 

                                                        List<Maquinariabe> lista;
                                                        Maquinariabr regla = new Maquinariabr();
                                                        lista = regla.listarCliente();
                                                         for (Maquinariabe entidad:lista){
                                                        %>
                                                        <option value='<%= entidad.getCodigo_Maqui()%>'><%= entidad.getNombre_Maqui()%></option>

                                                        <% 
                                                        }
                                                        %>
                                                    </select>
                                                </div>
                                </div>
                                                    <br>
                                <div class="row">


                                                <div class="col-3">
                                                        <b>Departamento</b>
                                                </div>
                                                <div class="col-3">
                                                    <select name="" id="txtDeparCod" class="form-control">
                                                        <%
                                                        List<Departamentobe> lista1;
                                                        Departamentobr regla1 = new Departamentobr();
                                                        lista1 = regla1.listarCliente();
                                                         for (Departamentobe entidad:lista1){
                                                        %>
                                                        <option value='<%=entidad.getCodigo()%>'><%= entidad.getDepartamento() %></option>
                                                        <% 
                                                            }
                                                        %>
                                                    </select>
                                                </div>
                                                <div class="col-3">
                                                        <b>Cantidad</b>
                                                </div>
                                                <div class="col-2">
                                                    <input type="text" name="" id="texCant" class="form-control"
                                                           maxlength="2" >
                                                </div>   
                                                    <div class="col-1">

                                                        <button class="btn btn-outline-primary" onclick="agregarTransporte()" >
                                                            <i class="fas fa-plus"></i>
                                                        </button>
                                                    </div>
                                            </div>
                                                    <div id="listado2"></div>

                                        </div>
                                                    <br>
                <div class="container-fluid" style="border-style: solid; padding: 20px; border-color: #cccccc">
                    <div class="row">
                            <div class="col-4">
                                <b>Fecha de transporte</b>
                            </div>
                            <div class="col-7 " >
                                <input type="date" id="textFechaTMaq" class="form-control">
                            </div>
                        </div>
                    <br>                    
                    <div class="row">
                            <div class="col-4">
                                <b>Choferes disponibles</b>
                            </div>
                            <div class="col-7 " >

                                <select name="" id="textChofeTMaq" class="form-control" >
                                     <% 
                                List< Choferesbe > ListaChofer;
                                Choferesbr reglaChofer = new Choferesbr();
                                ListaChofer = reglaChofer.listarCliente();
                                 for (Choferesbe entidad:ListaChofer){
                                %>
                                    <option value="<%=entidad.getCodigo()%>"> <%=entidad.getNombre() %> <%=entidad.getApellido() %> </option>
                                <% 
                                }
                                %>
                                </select>

                            </div>
                        </div>
                    </div>
                            
                </div>    
                                         
                                  
                
            </div>
            <div class="card-footer">
                <button class="btn btn-primary" onclick="GenerarSolicitud()" >Generar Solicitud</button>
            </div>
        </div>
        
        
        
        
    <script src="bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="bootstrap-4.5.0-dist/js/bootstrap.min.js" crossorigin="anonymous"></script>        
    </body>
    <script>
        listarDatos();
    </script>
</html>
